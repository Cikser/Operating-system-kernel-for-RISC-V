#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"

List* Scheduler::list = nullptr;

void Scheduler::initialize() {
    list = List::create();
}

TCB *Scheduler::get() {
    return list->get();
}

void Scheduler::put(TCB *t) {
    list->put(t);
}

void Scheduler::erase() {
    List::free(list);
}

