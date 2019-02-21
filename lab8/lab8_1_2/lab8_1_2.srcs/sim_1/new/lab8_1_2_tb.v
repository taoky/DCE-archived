`timescale 1ns / 1ps


module lab8_1_2_tb(
    );
    reg [3:0] v;
    reg Clk100MHz;
    wire [7:0] an;
    wire [6:0] seg;
    lab8_1_2 DUT(v, Clk100MHz, an, seg);
    always #5 Clk100MHz = ~Clk100MHz;
    integer i;
    initial
    begin
        v = 0;
        Clk100MHz = 0;
        for (i = 0; i < 16; i = i + 1)
        begin
            v = i;
            #7000000;
        end
        $finish;
    end
endmodule
