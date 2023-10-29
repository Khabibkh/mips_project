#include <algorithm>
#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include <vector>
#include <string.h>

void setup(int64_t N, uint64_t A[])
{
    printf("Inside direct_sum problem_setup, N=%lld \n", N);

    std::random_device rd;
    std::mt19937_64 generator(rd());
    std::uniform_int_distribution<uint64_t> distribution(0, UINT64_MAX);

    for (int64_t i = 0; i < N; ++i)
    {
        A[i] = distribution(generator);
    }
}

int64_t sum(int64_t N, uint64_t A[])
{
    printf("Inside direct_sum perform_sum, N=%lld \n", N);
   
    int64_t total = 0;
    for (int64_t i = 0; i < N; ++i) 
    {
        total += A[i];
    }

    return total;
}
