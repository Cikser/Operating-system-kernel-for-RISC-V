#include "../h/Sleeping.hpp"
#include "../h/MemoryAllocator.hpp"
Sleeping::Node* Sleeping::head = nullptr;

bool Sleeping::needAwakening() {
    if(head && head->relativeTime == 0)
        return true;
    return false;
}


TCB *Sleeping::get() {
    if(!head){
        return nullptr;
    }
    Node* p = head;
    head = head->next;
    TCB* ret = p->sleepingThread;
    MemoryAllocator::free(p);
    return ret;
}

void Sleeping::put(TCB *t, size_t time, TCB* awakener) {
    if(!t)
        return;
    Node* newNode = (Node*)MemoryAllocator::allocate(sizeof(Node));
    newNode->next = nullptr;
    newNode->sleepingThread = t;
    newNode->awakener = awakener;
    if(!head) {
        head = newNode;
        newNode->relativeTime = time;
        return;
    }
    Node* p = head, *prev = nullptr;
    time_t sum = 0;
    while (p){
        if(sum + p->relativeTime > time)
            break;
        sum += p->relativeTime;
        prev = p;
        p = p->next;
    }
    if(!prev){
        newNode->relativeTime = time;
        newNode->next = head;
        head = newNode;
        head->next->relativeTime -= time;
        return;
    }
    if(!p){
        newNode->relativeTime = time - sum;
        prev->next = newNode;
        newNode->next = nullptr;
        return;
    }
    prev->next = newNode;
    newNode->next = p;
    newNode->relativeTime = time - sum;
}

void Sleeping::decrement() {
    if (head) {
        head->relativeTime--;
    }
}

void Sleeping::erase() {
    while (head){
        Node* p = head;
        head = head->next;
        TCB::freeThread(p->sleepingThread);
        MemoryAllocator::free(p);
    }
}

void Sleeping::awake(TCB *a) {
    Node* p = head, *prev = nullptr;
    while (p){
        if(p->awakener == a){
            if(p->next){
                p->next->relativeTime += p->relativeTime;
                if(prev)
                    prev->next = p->next;
                else{
                    head = p->next;
                }
            }
            else{
                if(prev)
                    prev->next = nullptr;
                else{
                    head = nullptr;
                }
            }
            MemoryAllocator::free(p);
        }
        prev = p;
        p = p->next;
    }
}
