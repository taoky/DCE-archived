`timescale 1ns / 1ps


module lab1_3_1(
    input x,
    input y,
    input s,
    output reg m
    );
    always @ (x or y or s)
    begin
        if (s == 0)
            m = y;
        else
            m = x;
    end
endmodule
