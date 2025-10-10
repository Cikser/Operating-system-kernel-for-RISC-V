
#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator{

public:

    MemoryAllocator() = delete;

    static void* allocate(size_t size);

    static int free(void* mem);

    static size_t getFreeSpace();

    static size_t getLargestFreeBlock();

    static void initialize();

    static uint8 constexpr HEADER_SIZE = 16;

private:

    friend class Riscv;

    struct Fragment{
        Fragment *next;
        size_t size;
    };

    static void putInFreeList(void* addr, size_t size);

    static bool mergeFreeFragments(Fragment* prev, Fragment* curr);

    static Fragment *allocatedHead;
    static Fragment *freeHead;
    static size_t freeSpace;
    static size_t largestFreeBlock;

};

#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
