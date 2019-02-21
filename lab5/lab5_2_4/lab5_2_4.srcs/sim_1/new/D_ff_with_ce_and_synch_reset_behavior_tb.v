`timescale 1ns / 1ps


module D_ff_with_ce_and_synch_reset_behavior_tb(
    );
    reg D, Clk, ce, reset;
    wire Q;
    D_ff_with_ce_and_synch_reset_behavior DUT(D, Clk, reset, ce, Q);
    
    always #10 Clk = ~Clk;
    always
    begin
        #20 D = ~D;
        #80 D = ~D;
        #120 D = ~D;
        #80 D = ~D;
    end
    always
    begin
        #60 ce = ~ce;
        #20 ce = ~ce;
        #100 ce = ~ce;
        #20 ce = ~ce;
    end
    always
    begin
        #120 reset = ~reset;
        #20 reset = ~reset;
        #160 reset = ~reset;
    end
    initial
    begin
        D = 0; Clk = 0; ce = 0; reset = 0;
    end
endmodule

