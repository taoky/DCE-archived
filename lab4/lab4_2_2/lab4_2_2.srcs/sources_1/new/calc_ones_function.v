`timescale 1ns / 1ps


module calc_ones_function(ain, number_of_ones);
    parameter INPUT_BITS = 8;
    parameter OUTPUT_BITS = 3;
    input [INPUT_BITS - 1 : 0] ain;
    output reg [OUTPUT_BITS - 1 : 0] number_of_ones;
    
    function [OUTPUT_BITS - 1 : 0] calc_ones;
        input [INPUT_BITS - 1 : 0] in;
        integer k;

        begin
            calc_ones = 0;
            for (k = 0; k < INPUT_BITS; k = k + 1)
                if (in[k] == 1)
                    calc_ones = calc_ones + 1;
        end
    endfunction
    always @ (ain)
        number_of_ones = calc_ones(ain);
endmodule
