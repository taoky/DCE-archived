`timescale 1ns / 1ps


module D_ff_behavior(
    input D,
    input Clk,
    output reg Q
    );
    always @ (posedge Clk)
        if (Clk)
        begin
            Q <= D;
        end
endmodule
