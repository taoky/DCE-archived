`timescale 1ns / 1ps


module c_counter #(parameter MAX = 9)(
    input clk,
    input enable,
    input reset,
    input [3:0] init,
    output th_output,
    output reg [3:0] v
    );
    assign th_output = ~(|v);
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            v <= init;
        else if (enable)
        begin
            if (v == 0)
            begin
                v <= MAX;
            end
            else
                v <= v - 1;
        end
    end
endmodule
