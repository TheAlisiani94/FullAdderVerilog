// Module: FA_st
// Description: Structural implementation of a Full Adder
module FA_st (
    input  wire a,    // First input bit
    input  wire b,    // Second input bit
    input  wire cin,  // Carry-in input
    output wire s,    // Sum output (a XOR b XOR cin)
    output wire c     // Carry-out output (majority function)
);

    // Internal wires for intermediate signals
    wire N1, N2, N3, N4;

    // Structural design using logic gates
    xor xor1 (N1, a, b);        // N1 = a XOR b
    xor xor2 (s, N1, cin);      // s = (a XOR b) XOR cin
    and and1 (N2, a, b);        // N2 = a AND b
    and and2 (N3, b, cin);      // N3 = b AND cin
    and and3 (N4, cin, a);      // N4 = cin AND a
    or  or1  (c, N2, N3, N4);   // c = (a AND b) OR (b AND cin) OR (cin AND a)

endmodule
