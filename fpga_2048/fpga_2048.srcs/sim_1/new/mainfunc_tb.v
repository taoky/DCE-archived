`timescale 1ns / 1ps


module mainfunc_tb(
    );

    reg clk, reset;
    reg [3:0] keys, old_keys;
    wire [63:0] s;
    wire [1:0] status;

    mainfunc TB(clk, reset, keys, s, status);

    always #10 clk = ~clk;
    integer i;

    initial
    begin
        clk = 0; reset = 0; keys = 0;
        #1 reset = 1;
        #3 reset = 0; 
        forever
        begin
            for (i = 0; i < 5; i = i + 1)
            begin
                if (i == 0) keys = 0;
                else if (i == 1) keys = 4'b1000; // up
                else keys = keys >> 1;
                #10000000;
                $display("%d %d %d %d\n%d %d %d %d\n%d%d%d%d\n%d%d%d%d", s[63:60], s[59:56], s[55:52], s[51:48], s[47:44], s[43:40], s[39:36], s[35:32], s[31:28], s[27:24], s[23:20], s[19:16], s[15:12], s[11:8], s[7:4], s[3:0]);
                $display("%h", s);
                $display("The value of keys is %b\n", keys);
                old_keys = keys;
                keys = 0;
                #10000000;
                keys = old_keys;
           end
        end
    end


endmodule
