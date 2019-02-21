`timescale 1ns / 1ps


module lab1_1_1(
    input x,
    input y,
    input s,
    output m
    );
    wire s_not, x_s_not_and, s_y_and;
    not(s_not, s);
    and(x_s_not_and, s_not, x), (s_y_and, s, y);
    or(m, x_s_not_and, s_y_and);
endmodule
