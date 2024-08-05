pragma circom 2.1.6;

// Definición del template Divider
template Divider(){
    // Declaración de las señales de entrada y salida
    signal input a;
    signal input b;

    signal output c;

    // tarea computacional 
    c <-- a/b;

    // tarea simbólica
    a === b * c;
}

// Instanciación del template Divider
component main = Divider();

