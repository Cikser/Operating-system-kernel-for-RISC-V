#include "../h/Riscv.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/Sem.hpp"
#include "../h/Sleeping.hpp"
#include "../h/Scheduler.hpp"
#include "../h/ConsoleHandler.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 scause = readScause();
    if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
        volatile uint64 a0, a1, a2, a3, a4;
        __asm__ volatile("ld %0, 10*8(fp)" : "=r" (a0));
        __asm__ volatile("ld %0, 11*8(fp)" : "=r" (a1));
        __asm__ volatile("ld %0, 12*8(fp)" : "=r" (a2));
        __asm__ volatile("ld %0, 13*8(fp)" : "=r" (a3));
        __asm__ volatile("ld %0, 14*8(fp)" : "=r" (a4));
        uint64 sepc = readSepc()+4;
        uint64 sstatus = readSstatus();
        if(a0 == 0x1){
            a0 = (uint64) MemoryAllocator::allocate((size_t)a1 * MEM_BLOCK_SIZE);
            overridea0(a0);
        }
        else if(a0 == 0x2){
            a0 = MemoryAllocator::free((void*)a1);
            overridea0(a0);
        }
        else if(a0 == 0x3){
            a0 = MemoryAllocator::getFreeSpace();
            overridea0(a0);
        }
        else if(a0 == 0x4){
            a0 = MemoryAllocator::getLargestFreeBlock();
            overridea0(a0);
        }
        else if(a0 == 0x11){
            TCB* t = TCB::createThread((void(*)(void*))a2, (void *)a3, (void*)a4);
            if(!TCB::running)
                TCB::running = t;
            __asm__ volatile("addi a1, %[a1], 0" : : [a1]  "r" (a1));
            __asm__ volatile("addi t2, %[t], 0" : : [t] "r" (t));
            __asm__ volatile("sd t2, 0(a1)");
            overridea0(0);
        }
        else if(a0 == 0x12){
            TCB::running->setFinished(true);
            TCB::dispatch();
            overridea0(a0);
        }
        else if(a0 == 0x13){
            TCB::dispatch();
        }
        else if(a0 == 0x14){
            TCB::join(*(TCB**)a1, a2);
        }
        else if(a0 == 0x21){
            Sem* s = Sem::createSemaphore(a2);
            __asm__ volatile("mv a1, %[a1]" : : [a1]  "r" (a1));
            __asm__ volatile("mv t2, %[s]" : : [s] "r" (s));
            __asm__ volatile("sd t2, 0(a1)");
            overridea0(0);
        }
        else if(a0 == 0x22){
            Sem* s = (Sem*)a1;
            Sem::freeSemaphore(s);
            overridea0(0);
        }
        else if(a0 == 0x23){
            Sem* s = (Sem*)a1;
            s->wait();
            overridea0(0);
        }
        else if(a0 == 0x24){
            Sem* s = (Sem*)a1;
            s->signal();
            overridea0(0);
        }
        else if(a0 == 0x31){
            if(a1 > 0) {
                TCB::sleep(a1, nullptr);
            }
            overridea0(0);
        }
        else if(a0 == 0x41){
            char c = ConsoleHandler::inputBuffer->get();
            uint64 out = (uint64)c;
            overridea0(out);
        }
        else if(a0 == 0x42){
            char c = (char) a1;
            ConsoleHandler::outputBuffer->put(c);
        }
        writeSstatus(sstatus);
        writeSepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
        mcSip(Riscv::SIP_SSIP);
        Sleeping::decrement();
        while (Sleeping::needAwakening()){
            TCB* t = Sleeping::get();
            t->setSleeping(false);
            Scheduler::put(t);
        }
        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            uint64 sepc = readSepc();
            uint64 sstatus = readSstatus();
            TCB::dispatch();
            writeSstatus(sstatus);
            writeSepc(sepc);
        }
        while(!TCB::garbage->empty()){
            TCB* t = TCB::garbage->get();
            TCB::freeThread(t);
        }
    }
    else if(scause == 0x8000000000000009UL){
        uint64 n = plic_claim();
        if (n == CONSOLE_IRQ && (*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT)) {
            ConsoleHandler::handleInput();
        }
        plic_complete(n);
        mcSip(SIP_SEIP);
    }
    else{
        ConsoleHandler::putString("scause: ");
        ConsoleHandler::putULong(scause);
        ConsoleHandler::putString("\nsepc: ");
        ConsoleHandler::putULong(readSepc());
        ConsoleHandler::putString("\nstval: ");
        ConsoleHandler::putULong(readStval());
        ConsoleHandler::putc('\n');
        TCB::running->setFinished(true);
        TCB::fatalError = true;
        Sleeping::erase();
        TCB::dispatch();
    }
}