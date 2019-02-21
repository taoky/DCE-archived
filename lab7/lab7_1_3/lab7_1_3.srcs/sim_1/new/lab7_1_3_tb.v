`timescale 1ns / 1ps


module lab7_1_3_tb(
    );
    reg [3:0] inp;
    reg [1:0] sel;
    wire Q;

    lab7_1_3 DUT(inp, sel, Q);

    integer i, j;
    initial
    begin
        for (i = 0; i < 16; i = i + 1)
            for (j = 0; j < 4; j = j + 1)
            begin
                inp = i; sel = j;
                #2;
            end
    end
endmodule
