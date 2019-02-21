`timescale 1ns / 1ps


module debouncer(
    input clk,
    input reset,
    input in,
    output reg out
);

    integer i;

    always @(posedge clk)
    begin
        if (reset)
            i <= 0;
        else
            i[31:0] <= {i[30:0], in};
    end
    
    always @(*)
    begin
        if (i == 0)
            out = 0;
        else if (i == 32'hffffffff)
            out = 1;
    end
endmodule
