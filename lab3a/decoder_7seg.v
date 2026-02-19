module decoder_7seg (m, dis);

    input  [3:0] m;
    output reg [6:0] dis;

    always @ (m)
    begin
        case (m)
            4'd0: dis = 7'b1000000;
            4'd1: dis = 7'b1111001;
            4'd2: dis = 7'b0100100;
            4'd3: dis = 7'b0110000;
            4'd4: dis = 7'b0011001;
            4'd5: dis = 7'b0010010;
            4'd6: dis = 7'b0000010;
            4'd7: dis = 7'b1111000;
            4'd8: dis = 7'b0000000;
            4'd9: dis = 7'b0010000;
            default: dis = 7'b1111111;
        endcase
    end

endmodule
