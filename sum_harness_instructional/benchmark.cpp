//
// (C) 2022-2023, E. Wes Bethel
// benchmark-* harness for running different versions of the sum study
//    over different problem sizes
//
// usage: no command line arguments
// set problem sizes, block sizes in the code below

#include <algorithm>
#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include <vector>
#include <string.h>


extern void setup(int64_t N, uint64_t A[]);
extern int64_t sum(int64_t N, uint64_t A[]);


const double BANDWIDTH = 204.8e9;  // bandwidth in bytes per second AMD EPYC 7763

int main(int argc, char** argv) 
{
   std::cout << std::fixed << std::setprecision(2);

#define MAX_PROBLEM_SIZE 1 << 28  //  256M
   std::vector<int64_t> problem_sizes{ MAX_PROBLEM_SIZE >> 5, MAX_PROBLEM_SIZE >> 4, MAX_PROBLEM_SIZE >> 3, MAX_PROBLEM_SIZE >> 2, MAX_PROBLEM_SIZE >> 1, MAX_PROBLEM_SIZE};

   std::vector<uint64_t> A(MAX_PROBLEM_SIZE);

   int64_t t;
   int n_problems = problem_sizes.size();

   /* For each test size */
   for (int64_t n : problem_sizes) 
   {
      printf("Working on problem size N=%lld \n", n);

      // invoke user code to set up the problem
      setup(n, &A[0]);

      // Start the timer
      std::chrono::time_point<std::chrono::high_resolution_clock> start_time = std::chrono::high_resolution_clock::now();

      // invoke method to perform the sum
      t = sum(n, &A[0]);

      // Stop the timer
      std::chrono::time_point<std::chrono::high_resolution_clock> end_time = std::chrono::high_resolution_clock::now();

      std::chrono::duration<double> elapsed = end_time - start_time;
      printf("Elapsed time for N=%lld is : %lf seconds\n", n, elapsed.count());

      // Calculate MFLOP
      double ops = (n - 1) / 1e6; // (N-1) additions
      double mflops = ops / elapsed.count();
      printf("MFLOP/s for N=%lld is : %lf \n", n, mflops);

      // Calculate % of memory bandwidth utilized
      double bytes_accessed = n * sizeof(uint64_t) * 2;
      double percentage_bandwidth = (bytes_accessed / elapsed.count()) / BANDWIDTH * 100;
      printf("Memory bandwidth utilized for N=%lld is : %lf%% \n", n, percentage_bandwidth);

      // Calculate estimated memory latency
      double latency = (elapsed.count() / (2 * n)) * 1e9;
      printf("Estimated memory latency for N=%lld is : %lf nanoseconds\n", n, latency);

      printf(" Sum result = %lld \n", t);

   }
   return 0;
}
