`timescale 1ns / 1ps


module lab10_3_1_tb(
    );
    reg clk, reset;
    wire [2:0] count;

    lab10_3_1 DUT(clk, reset, count);

    always #5 clk = ~clk;

    initial
    begin
        clk = 0; reset = 1;
        reset <= #20 0;
        reset <= #120 1;
        reset <= #140 0;
    end
endmodule
