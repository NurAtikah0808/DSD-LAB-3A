module lab3a (a, b, c0, clock, reset, load, d0, d1, d2);

    input  [7:0] a, b;
    input  c0;
    input  clock, reset, load;
    output [6:0] d0, d1, d2;

    wire z1, cout, gr;
    wire [3:0] m, w, s;
    wire [3:0] Q;

    add_4bit add1 (a[3:0], b[3:0], c0, s, cout);
    comparator comp (s, 4'b1001, gr);

    assign z1 = cout | gr;

    newcircuita new1 (s, cout, w);

    mux2to1 w3 (s[3], w[3], z1, m[3]);
    mux2to1 w2 (s[2], w[2], z1, m[2]);
    mux2to1 w1 (s[1], w[1], z1, m[1]);
    mux2to1 w0 (s[0], w[0], z1, m[0]);

    register_4bit reg1 (reset, clock, load, m, Q);
    decoder_7seg dec0 (Q, d0);

    upper_circuit up1 (a[7:4], b[7:4], z1, reset, clock, load, d2, d1);

endmodule
