`timescale 1ns / 1ps


module register_with_synch_reset_load_behavior_tb(
    );
    reg Clk, load, reset;
    reg [3:0] D;
    wire [3:0] Q;

    register_with_synch_reset_load_behavior DUT(D, Clk, reset, load, Q);

    always #10 Clk = ~Clk;

    initial
    begin
        Clk = 0; load = 0; reset = 0; D = 4'b0000;
        load <= #60 1;
        load <= #80 0;
        load <= #120 1;
        load <= #140 0;
        load <= #195 1;
        load <= #215 0;
        load <= #280 1;
        reset <= #155 1;
        reset <= #240 0;
        D <= #20 4'b0101;
        D <= #80 4'b1001;
    end
endmodule
