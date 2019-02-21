`timescale 1ns / 1ps


module lab3_3_1_tb(
    );
    reg [1:0] a, b;
    wire lt, gt, eq;
    integer i, j;
    lab3_3_1 DUT(a, b, lt, gt, eq);
    initial
    begin
        for (i = 0; i < 4; i = i + 1)
        begin
            for (j = 0; j < 4; j = j + 1)
            begin
                a = i; b = j;
                #10 ;
            end
        end
    end
endmodule
