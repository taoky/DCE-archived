`timescale 1ns / 1ps


module D_ff_with_synch_reset_behavior_tb(
    );
    reg Clk, D, reset;
    wire Q;
    D_ff_with_synch_reset_behavior DUT(D, Clk, reset, Q);

    always #10 Clk = ~Clk;
    initial
    begin
        Clk = 0; D = 0; reset = 0;
        #20 D = 1;
        #15 reset = 1;
        #5 reset = 0;
        #5 reset = 1;
        #10 reset = 0;
        #30 D = 0;
        #2 reset = 1;
        #5 reset = 0;
    end
endmodule
