`timescale 1ns / 1ps


module lab1_1_2(
    input [1:0] x,
    input [1:0] y,
    input s,
    output [1:0] m
    );
    wire s_not;
    wire [1:0] x_s_not_and, s_y_and;
    not(s_not, s);
    and and0[1:0] (x_s_not_and, x, s_not),
        and1[1:0] (s_y_and, s, y);
    or or0[1:0] (m, x_s_not_and, s_y_and);
    
endmodule
