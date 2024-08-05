pragma circom 2.1.6;

template Multiplier() {

    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}

template MultiplierN(n){
    signal input in[n];
    signal output out;

    component multiplier[n-1];

    multiplier[0] = Multiplier();
    multiplier[0].a <== in[0];
    multiplier[0].b <== in[1];

    for(var i=1; i<(n-1); i++){
        multiplier[i] = Multiplier();
        multiplier[i].a <== in[i+1];
        multiplier[i].b <== multiplier[i-1].out;
    }

    out <== multiplier[n-2].out;
}

component main = MultiplierN(5);