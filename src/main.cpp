#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/TCB.hpp"
#include "../h/ConsoleHandler.hpp"
#include "../h/Riscv.h"
#include "../h/Sleeping.hpp"
#include "../h/Scheduler.hpp"

extern void userMain();

static void userMainWrapper(void* arg){
    userMain();
}

void main(){
    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    MemoryAllocator::initialize();
    ConsoleHandler::initialize();
    Scheduler::initialize();
    TCB* main = TCB::createThread(nullptr, nullptr, nullptr);
    main->setSupervised();
    TCB::running = main;
    TCB* console = TCB::createThread(ConsoleHandler::handleOutputThread, nullptr, MemoryAllocator::allocate(DEFAULT_STACK_SIZE*sizeof(uint64)));
    console->setSupervised();
    TCB* userMain = TCB::createThread(userMainWrapper, nullptr, MemoryAllocator::allocate(DEFAULT_STACK_SIZE*sizeof(uint64)));
    Riscv::msSstatus(Riscv::SSTATUS_SPIE);
    Riscv::mcSstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();

    while (!userMain->isFinished() && !TCB::error())
        thread_dispatch();

    ConsoleHandler::disable();
    while (!(console->isFinished() && console->isActive()));
    Sleeping::erase();
    Scheduler::erase();
    TCB::freeGarbage();
    ConsoleHandler::free();
    Riscv::turnOff();
}