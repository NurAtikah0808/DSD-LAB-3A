module circuitb (z, dis1);

    input z;
    output reg [6:0] dis1;

    always @ (z)
    begin
        case (z)
            1'b0: dis1 = 7'b1111111;
            1'b1: dis1 = 7'b1111001;
        endcase
    end

endmodule
