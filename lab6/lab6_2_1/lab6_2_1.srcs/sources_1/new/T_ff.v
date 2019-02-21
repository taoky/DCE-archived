`timescale 1ns / 1ps


module T_ff(
    input Enable,
    input Clk,
    input Clear,
    output reg Q
    );
    always @(posedge Clk or negedge Clear)
    begin
        if (!Clear)
            Q <= 0;
        else if (Enable)
            Q <= ~Q;
    end
endmodule
