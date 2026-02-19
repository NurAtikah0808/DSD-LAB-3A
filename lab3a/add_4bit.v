module add_4bit (a, b, c0, s, c4);

    input  [3:0] a, b;
    input  c0;
    output [3:0] s;
    output c4;

    wire [3:1] c;

    add_1bit add0 (a[0], b[0], c0,  s[0], c[1]);
    add_1bit add1 (a[1], b[1], c[1], s[1], c[2]);
    add_1bit add2 (a[2], b[2], c[2], s[2], c[3]);
    add_1bit add3 (a[3], b[3], c[3], s[3], c4);

endmodule
