`timescale 1ns / 1ps

module moveItem(
    input [15:0] intotal,
    output reg [15:0] outtotal
);

wire [3:0] in [3:0];


assign {in[3], in[2], in[1], in[0]} = intotal;

wire [3:0] f;

assign f[3] = |in[3];
assign f[2] = |in[2];
assign f[1] = |in[1];
assign f[0] = |in[0];

always @(*)
begin
    case (f)
        4'b0000: outtotal = intotal;
        4'b0001: outtotal = intotal;
        4'b0010: outtotal = {4'b0, 4'b0, 4'b0, in[1]};
        4'b0011: if (in[0] == in[1])
                    outtotal = {4'b0, 4'b0, 4'b0, in[0] + 4'b1};
                 else
                    outtotal = intotal;
        4'b0100: outtotal = {4'b0, 4'b0, 4'b0, in[2]};
        4'b0101: if (in[0] == in[2])
                    outtotal = {4'b0, 4'b0, 4'b0, in[0] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[2], in[0]};
        4'b0110: if (in[1] == in[2])
                    outtotal = {4'b0, 4'b0, 4'b0, in[1] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[2], in[1]};
        4'b0111: if (in[1] != in[2] && in[1] != in[0])
                    outtotal = intotal;
                 else if (in[1] == in[0])
                    outtotal = {4'b0, 4'b0, in[2], in[0] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[1] + 4'b1, in[0]};
        4'b1000: outtotal = {4'b0, 4'b0, 4'b0, in[3]};
        4'b1001: if (in[3] == in[0])
                    outtotal = {4'b0, 4'b0, 4'b0, in[0] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[3], in[0]};
        4'b1010: if (in[3] == in[1])
                    outtotal = {4'b0, 4'b0, 4'b0, in[1] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[3], in[1]};
        4'b1011: if (in[3] != in[1] && in[1] != in[0])
                    outtotal = {4'b0, in[3], in[1], in[0]};
                 else if (in[1] == in[0])
                    outtotal = {4'b0, 4'b0, in[3], in[0] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[1] + 4'b1, in[0]};
        4'b1100: if (in[3] == in[2])
                    outtotal = {4'b0, 4'b0, 4'b0, in[2] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[3], in[2]};
        4'b1101: if (in[3] != in[2] && in[2] != in[0])
                    outtotal = {4'b0, in[3], in[2], in[0]};
                 else if (in[2] == in[0])
                    outtotal = {4'b0, 4'b0, in[3], in[0] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[2] + 4'b1, in[0]};
        4'b1110: if (in[3] != in[2] && in[2] != in[1])
                    outtotal = {4'b0, in[3], in[2], in[1]};
                 else if (in[2] == in[1])
                    outtotal = {4'b0, 4'b0, in[3], in[1] + 4'b1};
                 else
                    outtotal = {4'b0, 4'b0, in[2] + 4'b1, in[1]};
        4'b1111: if (in[3] != in[2] && in[2] != in[1] && in[1] != in[0])
                    outtotal = intotal;
                 else if (in[3] == in[2] && in[1] == in[0])
                    outtotal = {4'b0, 4'b0, in[2] + 4'b1, in[0] + 4'b1};
                 else if (in[1] == in[0])
                    outtotal = {4'b0, in[3], in[2], in[0] + 4'b1};
                 else if (in[2] == in[1])
                    outtotal = {4'b0, in[3], in[1] + 4'b1, in[0]};
                 else
                    outtotal = {4'b0, in[2] + 4'b1, in[1], in[0]};
        default: outtotal = {4'b0, 4'b0, 4'b0, 4'b0}; // should not happen
    endcase
end

endmodule
