`timescale 1ns / 1ps


module lab1_4_1(
    input u,
    input y,
    input w,
    input s0,
    input s1,
    output m
    );
    wire u_y;
    lab1_1_1 mux1(u, y, s0, u_y);
    lab1_1_1 mux2(u_y, w, s1, m);
endmodule
