`timescale 1ns / 1ps


module lab6_1_5_tb(
    );
    reg Clk, ShiftEn, ShiftIn;
    wire [3:0] ParallelOut;
    wire ShiftOut;

    lab6_1_5 DUT(Clk, ShiftEn, ShiftIn, ParallelOut, ShiftOut);

    always #10 Clk = ~Clk;
    
    initial
    begin
        Clk = 0; ShiftEn = 0; ShiftIn = 1;
        ShiftEn <= #40 1;
        ShiftEn <= #80 0;
        ShiftEn <= #120 1;
        ShiftEn <= #160 0;
        ShiftEn <= #240 1;
        ShiftEn <= #280 0;
        ShiftEn <= #320 1;
        ShiftEn <= #360 0;
        ShiftIn <= #200 0;
    end
endmodule
