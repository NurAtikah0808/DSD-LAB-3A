module add_1bit (A, B, CIN, S, COUT);

    input A, B, CIN;
    output reg S, COUT;

    always @ (A or B or CIN)
    begin
        S    = A ^ B ^ CIN;
        COUT = (A & B) | (A & CIN) | (B & CIN);
    end

endmodule
