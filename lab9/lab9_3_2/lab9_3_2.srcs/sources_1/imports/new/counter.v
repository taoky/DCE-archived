`timescale 1ns / 1ps


module counter(
    input clk,
    input enable,
    input reset,
    input [1:0] init_min,
    output [3:0] pos0,
    output [3:0] pos1,
    output [3:0] pos2,
    output [3:0] pos3
    );
    wire th0, th1, th2, th3;
    wire new_en = enable & ((|pos0) | (|pos1) | (|pos2) | (|pos3));
    c_counter #9(clk, new_en, reset, 0, th0, pos0);
    c_counter #5(clk, th0 & new_en, reset, 0, th1, pos1);
    c_counter #9(clk, th1 & th0 & new_en, reset, init_min % 10, th2, pos2);
    c_counter #9(clk, th2 & th1 & th0 & new_en, reset, init_min / 10, th3, pos3);
endmodule
