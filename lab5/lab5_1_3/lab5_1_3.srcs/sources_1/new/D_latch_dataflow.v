`timescale 1ns / 1ps


module D_latch_dataflow(
    input D,
    input Enable,
    output Q,
    output Qbar
    );
    wire new_R, new_S;
    assign #2 new_R = ~D & Enable;
    assign #2 new_S = D & Enable;
    SR_latch_dataflow SLD(new_R, new_S, Q, Qbar);
endmodule
