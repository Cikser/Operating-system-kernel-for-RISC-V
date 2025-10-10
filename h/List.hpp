
#ifndef PROJECT_BASE_V1_1_LIST_HPP
#define PROJECT_BASE_V1_1_LIST_HPP

class TCB;

class List{

public:

    static List* create();

    void put(TCB* thread);

    TCB* get();

    bool empty() { return head == nullptr; }

    static void free(List* list);

private:

    struct Node{
        Node* next;
        TCB* thread;
    };

    Node* head;
    Node* tail;

};

#endif //PROJECT_BASE_V1_1_LIST_HPP
