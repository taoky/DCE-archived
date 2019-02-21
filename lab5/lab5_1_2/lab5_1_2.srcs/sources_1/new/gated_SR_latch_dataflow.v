`timescale 1ns / 1ps


module gated_SR_latch_dataflow(
    input R,
    input S,
    input Enable,
    output Q,
    output Qbar
    );
    wire new_R, new_S;
    assign #2 new_R = R & Enable;
    assign #2 new_S = S & Enable;
    SR_latch_dataflow SLD(new_R, new_S, Q, Qbar);
endmodule
