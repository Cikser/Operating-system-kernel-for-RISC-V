#include "../h/syscall_c.hpp"
void* mem_alloc(size_t size){
    size_t blockNum = size/MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE != 0)
        blockNum++;

    __asm__ volatile("mv a1, %0" : : "r" (blockNum));
    __asm__ volatile("li a0, 0x1");

    __asm__ volatile("ecall");

    uint64 addr;
    __asm__ volatile("mv %[addr], a0" : [addr] "=r" (addr));
    return (void*)addr;
}

int mem_free(void* mem){
    volatile uint64 addr = (uint64)mem;
    __asm__ volatile("mv a1, %0" : : "r" (addr));
    __asm__ volatile("li a0, 0x2");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

size_t mem_get_free_space(){
    __asm__ volatile("li a0, 0x3");

    __asm__ volatile("ecall");

    size_t size;
    __asm__ volatile("mv %0, a0" : "=r" (size));
    return size;
}

size_t mem_get_largest_free_block(){
    __asm__ volatile("li a0, 0x4");

    __asm__ volatile("ecall");

    size_t size;
    __asm__ volatile("mv %[size], a0" : [size] "=r" (size));
    return size;
}

int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg){
    volatile void* stack = mem_alloc(DEFAULT_STACK_SIZE*sizeof(uint64));
    __asm__ volatile("mv a4, %0" : : "r" ((uint64)stack));
    __asm__ volatile("mv a3, %0" : : "r" ((uint64)arg));
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)start_routine));
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    __asm__ volatile("li a0, 0x11");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

int thread_exit(){
    __asm__ volatile("li a0, 0x12");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

void thread_dispatch(){
    __asm__ volatile("li a0, 0x13");

    __asm__ volatile("ecall");

}

void thread_join(thread_t* handle, time_t t){
    __asm__ volatile("mv a2, %0" : : "r"((uint64)t));
    __asm__ volatile("mv a1, %0" : : "r"((uint64)handle));
    __asm__ volatile("li a0, 0x14");
    __asm__ volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init){
    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x21");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

int sem_close(sem_t handle){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x22");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

int sem_wait(sem_t id){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x23");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

int sem_signal(sem_t id){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x24");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

int time_sleep(time_t) {
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x31");

    __asm__ volatile("ecall");

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    return status;
}

char getc(){
    __asm__ volatile("li a0, 0x41");

    __asm__ volatile("ecall");

    char out;
    __asm__ volatile("mv %[out], a0" : [out] "=r" (out));
    return out;
}


void putc(char c){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x42");

    __asm__ volatile("ecall");

}