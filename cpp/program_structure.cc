// This file shows the basic structure of a c file

// 1) Header, these lines are handled by a preprocessor to replace lines prepended with '#'
#include <iostream>

// 2) Declare a main function 
int main() {
    // 3) declare variables
    // 4) function body
    std::cout << "Hello World";
    // 5) return statement, 0 typically represents a successfully terminated program
    return 0;
}

// compile:
// $ gcc -o compiled_program filename.cc
// $ ./compiled_program