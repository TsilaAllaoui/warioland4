#ifndef COMPILER_H
#define COMPILER_H

#define COMPILER_FORGET_VALUE(value) asm("" : "=r"(value))
#define COMPILER_BARRIER(value) asm("" : "+r"(value))
#define COMPILER_BARRIER_MEMORY(value) asm volatile("" : "+r"(value) : : "memory")
#define COMPILER_BARRIER_INPUT(value) asm("" : : "r"(value))
#define COMPILER_BARRIER2(first, second) \
    asm("" : "+r"(first), "+r"(second))
#define COMPILER_BARRIER5(first, second, third, fourth, fifth) \
    asm("" : "+r"(first), "+r"(second), "+r"(third), "+r"(fourth), "+r"(fifth))

#endif
