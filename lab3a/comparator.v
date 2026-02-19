module comparator (x, y, gr);

    input  [3:0] x, y;
    output reg gr;

    always @ (x or y)
    begin
        if (x > y)
            gr = 1;
        else
            gr = 0;
    end

endmodule
