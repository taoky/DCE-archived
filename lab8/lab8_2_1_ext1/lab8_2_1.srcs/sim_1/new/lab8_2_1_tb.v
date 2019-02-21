`timescale 1ns / 1ps


module counter_tb(
    );
    reg clk, reset;
    wire th0, th1, ce0, ce1;
    wire [3:0] pos0, pos1;
    counter DUT(clk, reset, th0, th1, ce0, ce1, pos0, pos1);

    always #1 clk = ~clk;
    always #250 reset = ~reset;
    initial
    begin
        clk = 0; reset = 0;
    end
endmodule
