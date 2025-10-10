#include "../h/syscall_cpp.hpp"

void* operator new(size_t size){
    return mem_alloc(size);
}

void operator delete(void * ptr){
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    myHandle = nullptr;
    this->body = body;
    this->arg = arg;
}

Thread::Thread() {
    myHandle = nullptr;
    this->body = &wrapper;
    this->arg = (void *) this;
}

int Thread::start() {
    if(!myHandle)
        return thread_create(&myHandle, body, arg);
    return -1;
}

void Thread::wrapper(void *arg) {
    Thread* t = (Thread*)arg;
    if(t)
        t->run();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

Thread::~Thread() {
    mem_free(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::join(time_t time) {
    if(myHandle)
        thread_join(&myHandle, time);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

int Semaphore::signal() {
    int status = sem_signal(myHandle);
    return status;
}

int Semaphore::wait() {
    int status = sem_wait(myHandle);
    return status;
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    this->period = period;
}

void PeriodicThread::terminate() {
    period = 0;
}

void PeriodicThread::run() {
    while (period != 0){
        periodicActivation();
        sleep(period);
    }
}

