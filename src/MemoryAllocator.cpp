#include "../h/MemoryAllocator.hpp"

size_t MemoryAllocator::freeSpace = 0;
size_t MemoryAllocator::largestFreeBlock = 0;
MemoryAllocator::Fragment* MemoryAllocator::allocatedHead = nullptr;
MemoryAllocator::Fragment* MemoryAllocator::freeHead = nullptr;

size_t MemoryAllocator::getFreeSpace() {
    return freeSpace;
}

size_t MemoryAllocator::getLargestFreeBlock() {
    Fragment *f = freeHead;
    size_t size = 0;
    while (f){
        if(f->size > size)
            size = f->size;
        f = f->next;
    }
    largestFreeBlock = size;
    return largestFreeBlock;
}

bool MemoryAllocator::mergeFreeFragments(Fragment *prev, Fragment *curr) {
    if(!prev || !curr)
        return false;
    if((uint64)prev + prev->size != (uint64)curr)
        return false;
    prev->size += curr->size;
    prev->next = curr->next;
    return true;
}

void MemoryAllocator::initialize() {
    freeSpace = ((const size_t)HEAP_END_ADDR - (const size_t)HEAP_START_ADDR);
    largestFreeBlock = freeSpace;
    freeHead = (Fragment*)HEAP_START_ADDR;
    freeHead->next = nullptr;
    freeHead->size = freeSpace;
    allocatedHead = nullptr;
}

void *MemoryAllocator::allocate(size_t size) {
    if(!freeHead)
        return nullptr;

    size_t blockNum = size / MEM_BLOCK_SIZE;
    if(size % MEM_BLOCK_SIZE != 0)
        blockNum++;

    size = blockNum * MEM_BLOCK_SIZE;
    size += HEADER_SIZE;
    getLargestFreeBlock();
    if(size > largestFreeBlock)
        return nullptr;

    Fragment* f = freeHead, *prev = nullptr;
    while (f && f->size < size){
        prev = f;
        f = f->next;
    }

    if(!f)
        return nullptr;

    size_t newSize = f->size - size;
    if(newSize >= MEM_BLOCK_SIZE){
        Fragment* newAddr = (Fragment*)((size_t)f + size);
        if(prev)
            prev->next = newAddr;
        else
            freeHead = newAddr;
        newAddr->size = newSize;
        newAddr->next = f->next;
    }
    else {
        if(prev){
            prev->next = f->next;
        }
        else
            freeHead = f->next;
    }

    f->size = size;
    f->next = nullptr;

    if(allocatedHead){
        f->next = allocatedHead;
    }
    allocatedHead = f;

    void* ret = (void*)((uint64)f + HEADER_SIZE);
    freeSpace -= size;

    return ret;
}

int MemoryAllocator::free(void *mem) {
    if(!allocatedHead)
        return -1;

    Fragment* f = allocatedHead, *prev = nullptr;

    while (f && (void*)((uint64)f + HEADER_SIZE) != mem){
        prev = f;
        f = f->next;
    }

    if(!f)
        return -1;

    if(prev)
        prev->next = f->next;
    else
        allocatedHead = f->next;

    f->next = nullptr;

    freeSpace+=f->size;
    putInFreeList(f, f->size);

    return 0;

}

void MemoryAllocator::putInFreeList(void *addr, size_t size) {
    Fragment* newAddr = (Fragment*)addr;
    newAddr->next = nullptr;

    if(!freeHead){
        freeHead = newAddr;
        return;
    }
    Fragment* f = freeHead, *prev = nullptr;
    while (f && newAddr > f){
        prev = f;
        f = f->next;
    }

    if(!prev){
        newAddr->next = freeHead;
        freeHead = newAddr;
        mergeFreeFragments(newAddr, newAddr->next);
    }
    else{
        prev->next = newAddr;
        newAddr->next = f;
        while (mergeFreeFragments(prev, prev->next));
    }

}

