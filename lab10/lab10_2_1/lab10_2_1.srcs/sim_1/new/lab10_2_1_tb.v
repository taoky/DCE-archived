`timescale 1ns / 1ps


module lab10_2_1_tb(
    );
    wire yout;
    reg clk, reset;
    reg [1:0] x;

    lab10_2_1 DUT(clk, reset, x, yout);

    always #5 clk = ~clk;

    initial
    begin
        clk = 0; x = 0; reset = 1;

        reset <= #20 0;
        reset <= #170 1;
        reset <= #180 0;

        x <= #40 2'b11;
        x <= #50 2'b10;
        x <= #60 0;
        x <= #80 2'b10;
        x <= #90 0;
        x <= #100 2'b11;
        x <= #110 0;
        x <= #120 2'b01;
        x <= #130 0;
        x <= #140 2'b10;
        x <= #150 2'b11;
        x <= #160 0;
        x <= #190 2'b10;
        x <= #220 0;
    end
endmodule
