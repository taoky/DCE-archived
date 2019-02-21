`timescale 1ns / 1ps


module comparator_dataflow(
    input [3:0] v,
    output res
    );
    assign res = v[3] & (v[2] | v[1]);
endmodule
