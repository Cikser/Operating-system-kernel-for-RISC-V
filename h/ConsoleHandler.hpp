
#ifndef PROJECT_BASE_V1_1_CONSOLEHANDLER_HPP
#define PROJECT_BASE_V1_1_CONSOLEHANDLER_HPP

#include "ConsoleBuffer.hpp"
#include "../lib/hw.h"

class ConsoleHandler{

public:

    static void handleOutputThread(void* arg);

    static void handleInput();

    static void initialize();

    static void disable() { working = false; }

    static void free();

    static bool done() { return !working && outputBuffer->currSize == 0; }

    static void putc(char c);

    static void putString(const char* s);

    static void putULong(uint64 x);

private:

    friend class Riscv;

    static ConsoleBuffer *inputBuffer;
    static ConsoleBuffer *outputBuffer;

    static bool working;

};


#endif //PROJECT_BASE_V1_1_CONSOLEHANDLER_HPP
