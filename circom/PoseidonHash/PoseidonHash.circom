pragma circom  2.1.6;

include "../node_modules/circomlib/circuits/poseidon.circom";

template PoseidonHash(){
    signal input preimage;
    signal input hash;
    signal output hashOutput;

    component poseidonHasher = Poseidon(1);
    poseidonHasher.inputs[0] <== preimage;
    hashOutput <== poseidonHasher.out;

    hashOutput === hash;

    log("Poseidon hash: ", hashOutput);
}

component main = PoseidonHash();