#include<iostream>

int main() {
    // Examples of valid variable instantiation
    
    // When a variable is instantiated memory is allocated for it and it is given an address
    int i; 
    double j, k;

    int meaning_of_the_universe = 42;       // copy initialialization
    std::cout << meaning_of_the_universe;

    double half(.5);                        // direct initialization (faster, skips copy step)
    std::cout << half;

    char o{'k'};                            // uniform initialization (preferred as of C++11)
    std::cout << o;
    return 0;
}