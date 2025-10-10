#include "../h/ConsoleHandler.hpp"
#include "../h/TCB.hpp"
#include "../h/Riscv.h"

ConsoleBuffer* ConsoleHandler::inputBuffer = nullptr;
ConsoleBuffer* ConsoleHandler::outputBuffer = nullptr;
bool ConsoleHandler::working;

void ConsoleHandler::initialize() {
    inputBuffer = ConsoleBuffer::createBuffer(512);
    outputBuffer = ConsoleBuffer::createBuffer(512);
    working = true;
}

void ConsoleHandler::handleInput() {
    char c = *((char*)CONSOLE_RX_DATA);
    if(c == '\r')
        c = '\n';
    if(inputBuffer->getCurrentSize() == inputBuffer->getMaxSize())
        return;
    inputBuffer->put(c);
}

void ConsoleHandler::handleOutputThread(void *arg) {
    while(true){
        if(done()){
            TCB::running->setFinished(true);
            TCB::dispatch();
        }
        else if(*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT){
            volatile char c = outputBuffer->get();
            *((volatile char *)CONSOLE_TX_DATA) = c;
        }
        else
            TCB::dispatch();
    }
}

void ConsoleHandler::free() {
    ConsoleBuffer::free(inputBuffer);
    ConsoleBuffer::free(outputBuffer);
}

void ConsoleHandler::putc(char c) {
    outputBuffer->put(c);
}

void ConsoleHandler::putString(const char *s) {
    for(int i = 0; s[i]; i++){
        outputBuffer->put(s[i]);
    }
}

void ConsoleHandler::putULong(uint64 x) {
    uint64 a = x;
    if(a == 0){
        outputBuffer->put('0');
        return;
    }
    char buffer[64];
    int i = 0;
    while(a > 0){
        uint64 y = a%10 + 48;
        a/=10;
        buffer[i++] = (char)y;
    }
    i--;
    while(i>=0){
        outputBuffer->put(buffer[i--]);
    }
}
