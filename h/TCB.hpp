
#ifndef PROJECT_BASE_V1_1_TCB_HPP
#define PROJECT_BASE_V1_1_TCB_HPP
#include "../lib/hw.h"
#include "../h/List.hpp"

class TCB{

public:
    using Body = void(*)(void*);

    bool isFinished() const { return finished; }

    void setFinished(bool finished) { this->finished = finished; }

    void setSleeping(bool sleeping) { this->sleeping = sleeping; }

    bool isSleeping() const { return sleeping; }

    bool isActive() const { return active; }

    void setActive(bool active) { this->active = active; }

    void setSupervised() { supervised = true; };

    uint64 getTimeSlice() const { return timeSlice; }

    static TCB* createThread(Body body, void* args, void* stack);

    static void freeThread(TCB* t);

    static TCB* running;

    static void sleep(time_t time, TCB* t);

    static void freeGarbage();

    static bool error() { return fatalError; }

    static void join(TCB* t, time_t time);

private:
    friend class Riscv;
    friend class Sem;
    friend class ConsoleHandler;
    friend class ConsoleBuffer;
    static bool fatalError;

    static void dispatch();

    void initialize(Body body, void* args, void* stack);

    static void wrapper();

    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* args;
    uint64* stack;
    Context context;
    bool finished;
    bool active;
    uint64 timeSlice;
    bool sleeping;
    bool supervised;

    static List* garbage;

    static uint64 timeSliceCounter;

    static void contextSwitch(Context* old, Context* running);

};


#endif //PROJECT_BASE_V1_1_TCB_HPP
