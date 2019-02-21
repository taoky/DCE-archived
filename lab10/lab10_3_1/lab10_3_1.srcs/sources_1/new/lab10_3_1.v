`timescale 1ns / 1ps


module lab10_3_1(
    input clk,
    input reset,
    output reg [2:0] count
    );

    reg [2:0] state, nextstate;
    reg [2:0] ROM [5:0];


    initial
    begin
        state = 0;
        nextstate = 1;
        $readmemb("ROM.txt", ROM, 0, 5);
    end

    always @ (posedge clk or posedge reset)
    begin
        if (reset)
        begin
            state <= 0;
        end
        else
        begin
            state <= nextstate;
        end
    end

    always @ (state)
    begin
        nextstate = (state + 1) % 6;
        count = ROM[state];
    end
endmodule
