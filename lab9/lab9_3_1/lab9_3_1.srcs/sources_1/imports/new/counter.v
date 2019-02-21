`timescale 1ns / 1ps


module counter(
    input clk,
    input enable,
    input reset,
    output [3:0] pos0,
    output [3:0] pos1,
    output [3:0] pos2,
    output [3:0] pos3
    );
    wire th0, th1, th2, th3;
    wire ith0, ith1, ith2;
    assign ith0 = th0 & enable;
    assign ith1 = th1 & th0 & enable;
    assign ith2 = th2 & th1 & th0 & enable;
    c_counter_binary_10(clk, enable, reset, th0, pos0);
    c_counter_binary_10(clk, th0, reset, th1, pos1);
    c_counter_binary_6(clk, ith1, reset, th2, pos2);
    c_counter_binary_10(clk, ith2, reset, th3, pos3);
endmodule
