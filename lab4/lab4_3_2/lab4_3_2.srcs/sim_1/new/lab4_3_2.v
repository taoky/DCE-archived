`timescale 1ns / 1ps


module lab4_3_2(
    );
    reg a, g1, g2;

    initial
    begin
        a = 0; g1 = 0; g2 = 1;
        #40 a = 1;
        #20 g1 = 1;
        #20 g2 = 0;
        #20 a = 0;
        #20 g1 = 0;
        #20 g2 = 1;
    end
endmodule
