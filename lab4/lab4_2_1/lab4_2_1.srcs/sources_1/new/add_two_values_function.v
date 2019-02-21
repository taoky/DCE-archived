`timescale 1ns / 1ps


module add_two_values_function(ain, bin, sum);
    parameter BITS = 4;
    input [BITS - 1 : 0] ain;
    input [BITS - 1 : 0] bin;
    output reg [BITS : 0] sum;
    
    function [BITS : 0] add_two_values;
        input [BITS - 1 : 0] x;
        input [BITS - 1 : 0] y;
        
        begin
            add_two_values = x + y;
        end
    endfunction
    
    always @ (ain or bin)
        sum = add_two_values(ain, bin);
endmodule
