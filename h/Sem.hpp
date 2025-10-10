
#ifndef PROJECT_BASE_V1_1_SEM_HPP
#define PROJECT_BASE_V1_1_SEM_HPP
#include "List.hpp"
class TCB;

class Sem{

public:

    static Sem* createSemaphore(unsigned val = 1);

    void wait();
    void signal();

    unsigned getValue() const { return val; }

    static void freeSemaphore(Sem* s);

protected:

    void block();
    void unblock();

private:

    unsigned val;

    List* l;

    void initialize(unsigned val);

};
#endif //PROJECT_BASE_V1_1_SEM_HPP
