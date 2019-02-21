`timescale 1ns / 1ps


module lab1_3_2(
    input [1:0] x,
    input [1:0] y,
    input s,
    output reg [1:0] m
    );
    always @ (x or y or s)
    begin
        if (s == 0)
            m = x;
        else
            m = y;
    end
endmodule
