`timescale 1ns / 1ps


module lab7_1_2_tb(
    );
    reg STREAM;
    initial
    begin
        STREAM <= #10 0;
        STREAM <= #12 1;
        STREAM <= #17 0;
        STREAM <= #20 1;
        STREAM <= #24 0;
        STREAM <= #26 1;
        STREAM <= #31 0;
    end
endmodule
