`timescale 1ns / 1ps


module lab6_2_3_tb(
    );
    reg Clock, Enable, Clear, Load;
    wire [3:0] Q;
    lab6_2_3 DUT(Clock, Enable, Clear, Load, Q);

    always #5 Clock = ~Clock;

    initial
    begin
        Clock = 0; Enable = 0; Clear = 0; Load = 0;
        Enable <= #20 1;
        Enable <= #170 0;
        Enable <= #210 1;
        Clear <= #40 1;
        Clear <= #60 0;
        Load <= #80 1;
        Load <= #90 0;
    end
endmodule
