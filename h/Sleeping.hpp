
#ifndef PROJECT_BASE_V1_1_SLEEPING_HPP
#define PROJECT_BASE_V1_1_SLEEPING_HPP

#include "TCB.hpp"

class Sleeping{

public:

    static void put(TCB* t, size_t time, TCB* awakener);

    static TCB* get();

    static bool needAwakening();

    static bool empty() { return head == nullptr; }

    static void decrement();

    static void erase();

    static void awake(TCB* a);

private:

    friend class Riscv;

    struct Node{
        Node* next;
        TCB* sleepingThread;
        time_t relativeTime;
        TCB* awakener;
    };

    static Node* head;

};

#endif //PROJECT_BASE_V1_1_SLEEPING_HPP
