`timescale 1ns / 1ps


module add_two_values_task(ain, bin, sum, cout);
    parameter BITS = 4;
    input [BITS - 1 : 0] ain;
    input [BITS - 1 : 0] bin;
    output reg [BITS - 1 : 0] sum;
    output reg cout;
    
    task add_two_values;
        input [BITS - 1 : 0] x;
        input [BITS - 1 : 0] y;
        output [BITS - 1 : 0] sum;
        output cout;
        
        begin
            {cout, sum} = x + y;
        end
    endtask
    
    always @ (ain or bin)
        add_two_values(ain, bin, sum, cout);
endmodule
