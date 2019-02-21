`timescale 1ns / 1ps


module lab2_circuitA_dataflow(
    input [2:0] v,
    output [2:0] nv
    );
    assign nv[0] = v[0];
    assign nv[1] = ~v[1];
    assign nv[2] = v[1] & v[2];
endmodule
