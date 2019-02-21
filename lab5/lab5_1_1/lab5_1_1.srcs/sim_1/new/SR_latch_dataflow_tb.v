`timescale 1ns / 1ps


module SR_latch_dataflow_tb(
    );
    reg R, S;
    wire Q, Qbar;
    SR_latch_dataflow DUT(R, S, Q, Qbar);
    initial
    begin
        R = 0; S = 0;
        #10 S = 1;
        #10 S = 0;
        #10 R = 1;
        #10 R = 0; S = 1;
        #10 R = 1; S = 0;
        #10 R = 0; S = 1;
        #10 R = 1; S = 0;
        #10 S = 1;
    end
endmodule
