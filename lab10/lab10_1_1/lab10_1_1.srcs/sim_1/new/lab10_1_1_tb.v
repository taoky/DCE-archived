`timescale 1ns / 1ps


module lab10_1_1_tb(
    );
    reg clk, reset, ain;
    wire [3:0] count;
    wire yout;

    lab10_1_1 DUT(clk, reset, ain, count, yout);

    always #5 clk = ~clk;

    initial
    begin
        clk <= 0;
        reset <= 1;
        ain <= 0;

        ain <= #40 1;
        ain <= #60 0;
        ain <= #120 1;
        ain <= #160 0;
        ain <= #180 1;

        reset <= #20 0;
        reset <= #190 1;
    end
endmodule
