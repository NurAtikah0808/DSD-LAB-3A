module newcircuita (s, cout, w);

    input  [3:0] s;
    input  cout;
    output reg [3:0] w;

    always @ (*)
    begin
        case ({cout, s})
            5'b01010: w = 4'b0000;
            5'b01011: w = 4'b0001;
            5'b01100: w = 4'b0010;
            5'b01101: w = 4'b0011;
            5'b01110: w = 4'b0100;
            5'b01111: w = 4'b0101;
            5'b10000: w = 4'b0110;
            5'b10001: w = 4'b0111;
            5'b10010: w = 4'b1000;
            5'b10011: w = 4'b1001;
            default : w = 4'b0000;
        endcase
    end

endmodule
