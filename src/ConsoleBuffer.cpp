#include "../h/ConsoleBuffer.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/ConsoleHandler.hpp"
#include "../h/TCB.hpp"
#include "../h/syscall_c.hpp"

ConsoleBuffer *ConsoleBuffer::createBuffer(int size) {
    ConsoleBuffer* b = (ConsoleBuffer*)MemoryAllocator::allocate(sizeof(ConsoleBuffer));
    b->maxSize = size;
    b->head = -1;
    b->tail = 0;
    b->currSize = 0;
    b->buf = (char*)MemoryAllocator::allocate(sizeof(char) * size);
    b->mutexHead = Sem::createSemaphore(1);
    b->mutexTail = Sem::createSemaphore(1);
    b->itemsAvailable = Sem::createSemaphore(0);
    b->spaceAvailable = Sem::createSemaphore(size);
    return b;
}

void ConsoleBuffer::put(char c) {
    spaceAvailable->wait();
    mutexTail->wait();
    buf[tail] = c;
    tail = (tail + 1) % maxSize;
    currSize++;
    mutexTail->signal();
    itemsAvailable->signal();
}

char ConsoleBuffer::get() {
    itemsAvailable->wait();
    mutexHead->wait();
    head = (head + 1) % maxSize;
    char ret = buf[head];
    currSize--;
    mutexHead->signal();
    spaceAvailable->signal();
    return ret;
}

void ConsoleBuffer::free(ConsoleBuffer *cb) {
    MemoryAllocator::free(cb->buf);
    Sem::freeSemaphore(cb->itemsAvailable);
    Sem::freeSemaphore(cb->spaceAvailable);
    Sem::freeSemaphore(cb->mutexTail);
    Sem::freeSemaphore(cb->mutexHead);
    MemoryAllocator::free(cb);
}
