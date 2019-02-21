`timescale 1ns / 1ps


module counter(
    input clk,
    input reset,
    output th0,
    output th1,
    output ce0,
    output ce1,
    output [3:0] pos0,
    output [3:0] pos1
    );
    wire th0, th1;
    assign ce0 = 1;
    assign ce1 = th0;
    c_counter_binary_0 CCB0(clk, ce0, reset, th0, pos0);
    c_counter_binary_1 CCB1(clk, ce1, reset, th1, pos1);
endmodule
