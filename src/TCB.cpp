#include "../h/TCB.hpp"
#include "../h/Riscv.h"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Sleeping.hpp"
#include "../h/ConsoleBuffer.hpp"
#include "../test/buffer_CPP_API.hpp"
TCB* TCB::running = nullptr;
List* TCB::garbage = nullptr;
uint64 TCB::timeSliceCounter = 0;
bool TCB::fatalError = false;

void TCB::dispatch() {
    TCB* old = running;
    if(!old->isFinished() && old->isActive() && !old->isSleeping())
        Scheduler::put(old);
    running = Scheduler::get();
    if(fatalError){
        while (!running->supervised){
            garbage->put(running);
            running->finished = true;
            running = Scheduler::get();
        }
    }
    if(old->isFinished())
        garbage->put(old);
    if(!running)
        return;
    timeSliceCounter = 0;
    contextSwitch(&old->context, &running->context);
}

TCB *TCB::createThread(TCB::Body body, void* args, void* stack) {
    TCB *t = (TCB*)MemoryAllocator::allocate(sizeof(TCB));
    t->initialize(body, args, stack);
    if(!garbage)
        garbage = List::create();
    return t;
}

void TCB::initialize(TCB::Body body, void *args, void* stack) {
    this->body = body;
    this->args = args;
    this->timeSlice = DEFAULT_TIME_SLICE;
    this->finished = false;
    this->active = true;
    this->sleeping = false;
    this->supervised = false;
    this->stack = (uint64*)stack;
    context.ra = body != nullptr ? (uint64)&wrapper : 0;
    context.sp = this->stack != nullptr ? (uint64)(this->stack + DEFAULT_STACK_SIZE) : 0;
    if(body != nullptr)
        Scheduler::put(this);
}

void TCB::wrapper() {
    if(!running->supervised)
        Riscv::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    Sleeping::awake(running);
    thread_dispatch();
}

void TCB::freeThread(TCB *t) {
    if(t == running)
        running = nullptr;
    MemoryAllocator::free(t->stack);
    MemoryAllocator::free(t);
}

void TCB::sleep(time_t time, TCB* t) {
    running->setSleeping(true);
    Sleeping::put(running, time, t);
    TCB::dispatch();
}

void TCB::freeGarbage() {
    while(!TCB::garbage->empty()){
        TCB* t = TCB::garbage->get();
        TCB::freeThread(t);
    }
    List::free(garbage);
    freeThread(running);
}

void TCB::join(TCB *t, time_t time) {
    if(time == 0) {
        while (!t->isFinished())
            TCB::dispatch();
    }
    else{
        sleep(time, t);
    }
}

