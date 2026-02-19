module register_4bit (reset, clock, load, D, Q);

    input reset, clock, load;
    input [3:0] D;
    output reg [3:0] Q;

    always @ (negedge reset or posedge clock)
    begin
        if (!reset)
            Q <= 4'b0000;
        else if (!load)
            Q <= D;
        else
            Q <= Q;
    end

endmodule
