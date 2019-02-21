`timescale 1ns / 1ps


module D_ff_behavior_tb(
    );
    reg Clk, D;
    wire Q;
    D_ff_behavior DUT(D, Clk, Q);
    always #10 Clk = ~Clk;
    initial
    begin
        Clk = 0; D = 0;
        #30 D = 1;
        #30 D = 0;
        #40 D = 1;
        #20 D = 0;
    end
endmodule
