
#ifndef PROJECT_BASE_V1_1_CONSOLEBUFFER_HPP
#define PROJECT_BASE_V1_1_CONSOLEBUFFER_HPP

#include "Sem.hpp"

class ConsoleBuffer{

public:

    char get();

    void put(char c);

    char geta();

    void puta(char c);

    int getCurrentSize() { return currSize; }

    int getMaxSize() { return maxSize; }

    static ConsoleBuffer* createBuffer(int size);

    static void free(ConsoleBuffer* cb);

    ConsoleBuffer() = delete;

private:

    friend class ConsoleHandler;
    int maxSize;
    int head, tail;
    int currSize;

    char* buf;

    Sem *mutexHead, *mutexTail, *spaceAvailable, *itemsAvailable;

};

#endif //PROJECT_BASE_V1_1_CONSOLEBUFFER_HPP
