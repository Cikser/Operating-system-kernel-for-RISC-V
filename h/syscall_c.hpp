#ifndef PROJECT_BASE_V1_1_SYSCALL_C_HPP
#define PROJECT_BASE_V1_1_SYSCALL_C_HPP
#include "../lib/hw.h"

class _thread;
class _sem;

typedef _thread* thread_t;
typedef _sem* sem_t;
typedef  unsigned long time_t;
const int EOF = -1;

extern void *mem_alloc(size_t size);

extern size_t mem_get_free_space();

extern int mem_free(void* mem);

extern size_t mem_get_largest_free_block();

extern int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg);

extern int thread_exit();

extern void thread_dispatch();

extern void thread_join(thread_t* handle, time_t t);

extern int sem_open(sem_t* handle, unsigned init);

extern int sem_close(sem_t handle);

extern int sem_wait(sem_t id);

extern int sem_signal(sem_t id);

extern int time_sleep(time_t);

extern char getc();

extern void putc(char);

#endif //PROJECT_BASE_V1_1_SYSCALL_C_HPP