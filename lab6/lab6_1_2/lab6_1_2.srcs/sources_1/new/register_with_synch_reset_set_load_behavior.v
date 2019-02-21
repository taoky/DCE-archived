`timescale 1ns / 1ps


module register_with_synch_reset_set_load_behavior(
    input [3:0] D,
    input Clk,
    input reset,
    input set,
    input load,
    output reg [3:0] Q
    );
    always @(posedge Clk)
        if (reset)
        begin
            Q <= 0;
        end else if (set)
        begin
            Q <= 4'b1111;
        end else if (load)
        begin
            Q <= D;
        end
endmodule
