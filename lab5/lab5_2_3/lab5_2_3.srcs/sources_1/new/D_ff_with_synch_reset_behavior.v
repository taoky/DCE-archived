`timescale 1ns / 1ps


module D_ff_with_synch_reset_behavior(
    input D,
    input Clk,
    input reset,
    output reg Q
    );
    always @ (posedge Clk)
        if (reset)
        begin
            Q <= 1'b0;
        end else
        begin
            Q <= D;
        end
endmodule
