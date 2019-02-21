`timescale 1ns / 1ps


module lab6_2_1_tb(
    );
    reg Clock, Enable, Clear_n;
    wire [7:0] Q;

    lab6_2_1 DUT(Clock, Enable, Clear_n, Q);

    always #5 Clock = ~Clock;

    initial
    begin
        Clock = 0; Enable = 0; Clear_n = 0;
        Enable <= #20 1;
        Enable <= #120 0;
        Enable <= #200 1;
        Clear_n <= #40 1;
    end
endmodule
