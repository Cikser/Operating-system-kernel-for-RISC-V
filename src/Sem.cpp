#include "../h/Sem.hpp"
#include "../h/TCB.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Scheduler.hpp"

Sem *Sem::createSemaphore(unsigned val) {
    Sem* s = (Sem*)MemoryAllocator::allocate(sizeof(Sem));
    s->initialize(val);
    return s;
}

void Sem::wait() {
    if(val == 0)
        block();
    else
        val--;
}

void Sem::signal() {
    if(l->empty())
        val++;
    else
        unblock();
}

void Sem::block() {
    TCB::running->setActive(false);
    l->put(TCB::running);
    TCB::dispatch();
}


void Sem::unblock() {
    TCB* t = l->get();
    if(!t)
        return;
    t->setActive(true);
    if(!t->isSleeping() && !t->isFinished())
        Scheduler::put(t);
}

void Sem::initialize(unsigned val) {
    this->val = val;
    l = List::create();
}

void Sem::freeSemaphore(Sem *s) {
    List::free(s->l);
    MemoryAllocator::free(s);
}
