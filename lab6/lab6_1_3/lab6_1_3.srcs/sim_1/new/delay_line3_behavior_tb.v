`timescale 1ns / 1ps


module delay_line3_behavior_tb(
    );
    reg Clk, ShiftIn;
    wire ShiftOut;

    delay_line3_behavior DUT(Clk, ShiftIn, ShiftOut);

    always #10 Clk = ~Clk;

    initial
    begin
        Clk = 0; ShiftIn = 0;
        ShiftIn <= #20 1;
        ShiftIn <= #60 0;
        ShiftIn <= #80 1;
        ShiftIn <= #120 0;
    end
endmodule
