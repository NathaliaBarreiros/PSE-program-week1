pragma circom  2.1.6;

template Multiplication_2() {

    // Declaration of signals
    signal input a;
    signal input b;
    signal output out;

    // symbolic and computational tasks
    out <== a * b;
}

component main = Multiplication_2();