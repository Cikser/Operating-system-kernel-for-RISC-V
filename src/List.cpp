#include "../h/List.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"

List *List::create() {
    List* l = (List*)MemoryAllocator::allocate(sizeof(List));
    l->head = nullptr;
    l->tail = nullptr;
    return l;
}

TCB *List::get() {
    if(!head)
        return nullptr;
    TCB* ret = head->thread;
    Node* p = head;
    if(head == tail){
        head = nullptr;
        tail = nullptr;
    }
    else
        head = head->next;
    MemoryAllocator::free(p);
    p = nullptr;
    return ret;
}

void List::put(TCB *thread) {
    if(!thread)
        return;
    Node* newNode = (Node*)MemoryAllocator::allocate(sizeof(Node));
    newNode->next = nullptr;
    newNode->thread = thread;
    if(!head){
        head = newNode;
        tail = newNode;
        return;
    }
    tail->next = newNode;
    tail = newNode;
}

void List::free(List* list) {
    Node* p = list->head, *q = nullptr;
    while (p){
        q = p;
        p = p->next;
        TCB::freeThread(q->thread);
        MemoryAllocator::free(q);
    }
    MemoryAllocator::free(list);
}
