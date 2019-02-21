`timescale 1ns / 1ps


module lab2_2_1_partA(
    input [3:0] v,
    output z,
    output [3:0] m
    );
    comparator_dataflow CD(v, z);
    wire [2:0] nv;
    lab2_circuitA_dataflow LCD(v[2:0], nv);
    assign m[3] = ~z & v[3];
    assign m[2] = (~z & v[2]) | (z & nv[2]);
    assign m[1] = (~z & v[1]) | (z & nv[1]);
    assign m[0] = (~z & v[0]) | (z & nv[0]);
endmodule
