`timescale 1ns / 1ps


module gated_SR_latch_dataflow_tb(
    );
    reg R, S, Enable;
    wire Q, Qbar;
    gated_SR_latch_dataflow DUT(R, S, Enable, Q, Qbar);
    initial
    begin
        R = 0; S = 0; Enable = 0;
        #10 S = 1;
        #10 Enable = 1;
        #10 S = 0;
        #10 R = 1;
        #10 Enable = 0;
        #10 R = 0; S = 1;
        #10 R = 1; S = 0;
        #10 R = 0; S = 1;
        #10 Enable = 1;
    end
endmodule
