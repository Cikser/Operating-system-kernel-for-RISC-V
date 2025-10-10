//
// Created by os on 8/9/25.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP
#include "../h/List.hpp"

class TCB;

class Scheduler{

public:

    static void put(TCB* t);

    static TCB* get();

    static bool empty(){
        return list->empty();
    }

    static void erase();

    static void initialize();

private:

    static List* list;


};

#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP
