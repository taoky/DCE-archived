`timescale 1ns / 1ps


module parallel_in_serial_out_load_enable_behavior_tb(
    );
    reg Clk, load, ShiftEn, ShiftIn;
    reg [3:0] ParallelIn;
    wire [3:0] RegContent;
    wire ShiftOut;
    parallel_in_serial_out_load_enable_behavior DUT(Clk, ShiftIn, ParallelIn, load, ShiftEn, ShiftOut, RegContent);

    always #10 Clk = ~Clk;

    initial
    begin
        Clk = 0; load = 0; ShiftEn = 0; ShiftIn = 1; ParallelIn = 0;
        load <= #60 1;
        load <= #80 0;
        load <= #200 1;
        load <= #220 0;
        load <= #275 1;
        load <= #295 0;
        load <= #360 1;
        load <= #380 0;
        ShiftEn <= #100 1;
        ShiftEn <= #320 0;
        ParallelIn <= #20 4'b0101;
        ParallelIn <= #180 4'b1001;
    end
endmodule
