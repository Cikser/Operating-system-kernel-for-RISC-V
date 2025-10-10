//
// Created by os on 8/9/25.
//

#ifndef PROJECT_BASE_V1_1_RISCV_H
#define PROJECT_BASE_V1_1_RISCV_H
#include "../lib/hw.h"

class Riscv{

public:

    static void popSppSpie();

    static void supervisorTrap();

    static uint64 readScause();

    static void writeScause(uint64 scause);

    static uint64 readSepc();

    static void writeSepc(uint64 sepc);

    static uint64 readSstatus();

    static void writeSstatus(uint64 sstatus);

    static uint64 readStvec();

    static void writeStvec(uint64 stvec);

    static uint64 readStval();

    static void writeStval(uint64 stval);

    enum BitMaskStatus{
        SSTATUS_SIE = (1<<1),
        SSTATUS_SPIE = (1<<5),
        SSTATUS_SPP = (1<<8)
    };

    enum BitMaskSip{
        SIP_SSIP = (1<<1),
        SIP_STIP = (1<<5),
        SIP_SEIP = (1<<9),
    };

    static void msSip(uint64 mask);

    static void mcSip(uint64 mask);

    static void msSstatus(uint64 mask);

    static void mcSstatus(uint64 mask);

    static void overridea0(uint64 a0);

    static void turnOff();

private:

    static void handleSupervisorTrap();

};

inline uint64 Riscv::readScause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r" (scause));
    return scause;
}

inline void Riscv::writeScause(uint64 scause) {
    __asm__ volatile("csrw scause, %[scause]" : : [scause] "r" (scause));
}

inline uint64 Riscv::readSepc() {
    uint64 volatile sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r" (sepc));
    return sepc;
}

inline void Riscv::writeSepc(uint64 sepc) {
    __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r" (sepc));
}

inline uint64 Riscv::readStval() {
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval" : [stval] "=r" (stval));
    return stval;
}

inline void Riscv::writeStval(uint64 stval) {
    __asm__ volatile("csrw stval, %[stval]" : : [stval] "r" (stval));
}

inline uint64 Riscv::readStvec() {
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec" : [stvec] "=r" (stvec));
    return stvec;
}

inline void Riscv::writeStvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]" : : [stvec] "r" (stvec));
}

inline uint64 Riscv::readSstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r" (sstatus));
    return sstatus;
}

inline void Riscv::writeSstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r" (sstatus));
}

inline void Riscv::mcSip(uint64 mask) {
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r" (mask));
}

inline void Riscv::msSip(uint64 mask) {
    __asm__ volatile("csrs sip, %[mask]" : : [mask] "r" (mask));
}

inline void Riscv::mcSstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]" : : [mask] "r" (mask));
}

inline void Riscv::msSstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]" : : [mask] "r" (mask));
}

inline void Riscv::overridea0(uint64 a0){
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
}

inline void Riscv::turnOff() {
    __asm__ volatile("li t0, 0x100000");
    __asm__ volatile("li t1, 0x5555");
    __asm__ volatile("sw t1, (t0)");
}

#endif //PROJECT_BASE_V1_1_RISCV_H
