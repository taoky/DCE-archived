`timescale 1ns / 1ps


module D_ff(
    input D,
    input Clk,
    input Clear,
    output reg Q
    );
    always @(posedge Clk or negedge Clear)
    begin
        if (!Clear)
            Q <= 0;
        else
            Q <= D;
    end
endmodule
