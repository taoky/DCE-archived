`timescale 1ns / 1ps


module T_ff(
    input Enable,
    input Clk,
    input Clear,
    output Q
    );
    wire x;
    assign x = Enable ^ Q;
    D_ff d(x, Clk, Clear, Q);
endmodule
