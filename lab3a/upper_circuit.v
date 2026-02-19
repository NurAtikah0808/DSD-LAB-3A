module upper_circuit (a, b, c4, reset, clock, load, d2, d1);

    input  [3:0] a, b;
    input  c4;
    input  reset, clock, load;
    output [6:0] d2, d1;

    wire z2, gr;
    wire [3:0] m, w, s;
    wire [4:0] Q;

    add_4bit add1 (a, b, c4, s, cout);
    comparator comp (s, 4'b1001, gr);

    assign z2 = cout | gr;

    newcircuita new1 (s, cout, w);
    circuitb cb1 (Q[4], d2);

    mux2to1 w3 (s[3], w[3], z2, m[3]);
    mux2to1 w2 (s[2], w[2], z2, m[2]);
    mux2to1 w1 (s[1], w[1], z2, m[1]);
    mux2to1 w0 (s[0], w[0], z2, m[0]);

    register_5bit reg1 (reset, clock, load, {z2,m}, Q);
    decoder_7seg dec1 (Q[3:0], d1);

endmodule
