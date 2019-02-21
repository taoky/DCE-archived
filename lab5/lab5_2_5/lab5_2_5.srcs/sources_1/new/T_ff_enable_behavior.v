`timescale 1ns / 1ps


module T_ff_enable_behavior(
    input Clk,
    input reset_n,
    input T,
    output reg Q
    );
    always @ (negedge Clk)
        if (!reset_n)
            Q <= 1'b0;
        else if (T)
            Q <= ~Q;
endmodule
