`timescale 1ns / 1ps

module mainfunc (
    input clk,
    input reset,
    input [3:0] keys_original, // UDLR
    input cheat,

    output [63:0] s,
    output reg [1:0] status
);

/*
15 14 13 12
11 10  9  8
 7  6  5  4
 3  2  1  0
*/

wire [15:0] counter;
counter16 CNT(clk, reset, 16'hffff, counter);

wire fsm_clk = counter[10];
wire rnd_clk = counter[15];

// debounce
wire [3:0] keys;
debouncer DB1(fsm_clk, reset, keys_original[0], keys[0]);
debouncer DB2(fsm_clk, reset, keys_original[1], keys[1]);
debouncer DB3(fsm_clk, reset, keys_original[2], keys[2]);
debouncer DB4(fsm_clk, reset, keys_original[3], keys[3]);

reg [3:0] board [15:0], nboard[15:0];
reg [1:0] state, nextstate, nextstatus; // 0: wait & handle input; 1: add random; 2: judge; 3: end

// status 0: playing, 1: dead, 2: win
wire [3:0] gen_up [3:0], gen_down [3:0], gen_left [3:0], gen_right [3:0]; // left to right, up to down

wire [3:0] up [15:0], down [15:0], left [15:0], right [15:0];

wire [63:0] s_up, s_down, s_left, s_right;
//reg [63:0] s_p;
wire [15:0] gg_up, gg_down, gg_left, gg_right;

genvar gen_i;
for (gen_i = 0; gen_i < 16; gen_i = gen_i + 1)
begin
    assign s_up[gen_i*4+:4] = up[gen_i];
    assign s_down[gen_i*4+:4] = down[gen_i];
    assign s_left[gen_i*4+:4] = left[gen_i];
    assign s_right[gen_i*4+:4] = right[gen_i];
    assign s[gen_i*4+:4] = board[gen_i];
end

assign gg_up = {gen_up[3], gen_up[2], gen_up[1], gen_up[0]};
assign gg_down = {gen_down[3], gen_down[2], gen_down[1], gen_down[0]};
assign gg_left = {gen_left[3], gen_left[2], gen_left[1], gen_left[0]};
assign gg_right = {gen_right[3], gen_right[2], gen_right[1], gen_right[0]};

moveItem u3({board[3], board[7], board[11], board[15]},
            {up[3], up[7], up[11], up[15]});
moveItem u2({board[2], board[6], board[10], board[14]},
            {up[2], up[6], up[10], up[14]});
moveItem u1({board[1], board[5], board[9], board[13]},
            {up[1], up[5], up[9], up[13]});
moveItem u0({board[0], board[4], board[8], board[12]},
            {up[0], up[4], up[8], up[12]});

moveItem d3({board[15], board[11], board[7], board[3]},
            {down[15], down[11], down[7], down[3]});
moveItem d2({board[14], board[10], board[6], board[2]},
            {down[14], down[10], down[6], down[2]});
moveItem d1({board[13], board[9], board[5], board[1]},
            {down[13], down[9], down[5], down[1]});
moveItem d0({board[12], board[8], board[4], board[0]},
            {down[12], down[8], down[4], down[0]});

moveItem l3({board[12], board[13], board[14], board[15]},
            {left[12], left[13], left[14], left[15]});
moveItem l2({board[8], board[9], board[10], board[11]},
            {left[8], left[9], left[10], left[11]});
moveItem l1({board[4], board[5], board[6], board[7]},
            {left[4], left[5], left[6], left[7]});
moveItem l0({board[0], board[1], board[2], board[3]},
            {left[0], left[1], left[2], left[3]});

moveItem r3({board[15], board[14], board[13], board[12]},
            {right[15], right[14], right[13], right[12]});
moveItem r2({board[11], board[10], board[9], board[8]},
            {right[11], right[10], right[9], right[8]});
moveItem r1({board[7], board[6], board[5], board[4]},
            {right[7], right[6], right[5], right[4]});
moveItem r0({board[3], board[2], board[1], board[0]},
            {right[3], right[2], right[1], right[0]});

generate_new g_up(rnd_clk, {board[3], board[2], board[1], board[0]},
              {gen_up[3], gen_up[2], gen_up[1], gen_up[0]});
generate_new g_down(rnd_clk, {board[15], board[14], board[13], board[12]},
                {gen_down[3], gen_down[2], gen_down[1], gen_down[0]});
generate_new g_left(rnd_clk, {board[12], board[8], board[4], board[0]},
                {gen_left[3], gen_left[2], gen_left[1], gen_left[0]});
generate_new g_right(rnd_clk, {board[15], board[11], board[7], board[3]},
                 {gen_right[3], gen_right[2], gen_right[1], gen_right[0]});

always @(*)
begin 

	{nboard[15], nboard[14], nboard[13], nboard[12], nboard[11], nboard[10],
    nboard[9], nboard[8], nboard[7], nboard[6], nboard[5], nboard[4],
    nboard[3], nboard[2], nboard[1], nboard[0]} = 
    {board[15], board[14], board[13], board[12], board[11], board[10],
    board[9], board[8], board[7], board[6], board[5], board[4],
    board[3], board[2], board[1], board[0]};
    nextstate = state;
    nextstatus = status;
    case (state)
        2'b00:
        begin
//            s_p = s;
            case (keys)
                4'b1000: // up
                begin
                    if (s == s_up)
                        nextstate = 2;
                    else
                        nextstate = 1;
                    {nboard[15], nboard[14], nboard[13], nboard[12], nboard[11], nboard[10],
                        nboard[9], nboard[8], nboard[7], nboard[6], nboard[5], nboard[4],
                        nboard[3], nboard[2], nboard[1], nboard[0]} = s_up;
                end
                4'b0100: // down
                begin
                    if (s == s_down)
                        nextstate = 2;
                    else
                        nextstate = 1;
                    {nboard[15], nboard[14], nboard[13], nboard[12], nboard[11], nboard[10],
                        nboard[9], nboard[8], nboard[7], nboard[6], nboard[5], nboard[4],
                        nboard[3], nboard[2], nboard[1], nboard[0]} = s_down;
                end
                4'b0010: // left
                begin
                    if (s == s_left)
                        nextstate = 2;
                    else
                        nextstate = 1;
                    {nboard[15], nboard[14], nboard[13], nboard[12], nboard[11], nboard[10],
                        nboard[9], nboard[8], nboard[7], nboard[6], nboard[5], nboard[4],
                        nboard[3], nboard[2], nboard[1], nboard[0]} = s_left;
                end
                4'b0001: // right
                begin
                    if (s == s_right)
                        nextstate = 2;
                    else
                        nextstate = 1;
                    {nboard[15], nboard[14], nboard[13], nboard[12], nboard[11], nboard[10],
                        nboard[9], nboard[8], nboard[7], nboard[6], nboard[5], nboard[4],
                        nboard[3], nboard[2], nboard[1], nboard[0]} = s_right;
                end
            endcase
        end
        2'b01:
        begin
            case (keys)
                4'b1000: {nboard[3], nboard[2], nboard[1], nboard[0]} = {gg_up};
                4'b0100: {nboard[15], nboard[14], nboard[13], nboard[12]} = {gg_down};
                4'b0010: {nboard[12], nboard[8], nboard[4], nboard[0]} = {gg_left};
                4'b0001: {nboard[15], nboard[11], nboard[7], nboard[3]} = {gg_right};
            endcase
            nextstate = 2;
        end
        2'b10:
        begin
            if ((s_up == s_down) && (s_left == s_right))
            begin
                nextstatus = 1;
                nextstate = 3;
            end
            else if (keys == 0)
            begin
                if (board[15] == 11 || 
                    board[14] == 11 ||
                    board[13] == 11 ||
                    board[12] == 11 ||
                    board[11] == 11 ||
                    board[10] == 11 ||
                    board[9] == 11 ||
                    board[8] == 11 ||
                    board[7] == 11 ||
                    board[6] == 11 ||
                    board[5] == 11 ||
                    board[4] == 11 ||
                    board[3] == 11 ||
                    board[2] == 11 ||
                    board[1] == 11 ||
                    board[0] == 11) // get 2048, wins.
                begin
                    nextstatus = 2;
                    nextstate = 3;
                end
                else
                    nextstate = 0;
            end
        end
        2'b11: nextstate = 3; // deadloop
    endcase
end

initial
begin
    board[15] <= 0;
    board[14] <= 0;
    board[13] <= 0;
    board[12] <= 0;
    board[11] <= 0;
    board[10] <= 1;
    board[9] <= 0;
    board[8] <= 0;
    board[7] <= 0;
    board[6] <= 0;
    board[5] <= 0;
    board[4] <= 1;
    board[3] <= 0;
    board[2] <= 0;
    board[1] <= 0;
    board[0] <= 0;
end

always @(posedge fsm_clk or posedge reset)
begin
    if (reset)
    begin
        if (~cheat)
        begin
            board[15] <= 0;
            board[14] <= 0;
            board[13] <= 0;
            board[12] <= 0;
            board[11] <= 0;
            board[10] <= 1;
            board[9] <= 0;
            board[8] <= 0;
            board[7] <= 0;
            board[6] <= 0;
            board[5] <= 0;
            board[4] <= 1;
            board[3] <= 0;
            board[2] <= 0;
            board[1] <= 0;
            board[0] <= 0;
        end
        else
        begin
            board[15] <= 10;
            board[14] <= 9;
            board[13] <= 8;
            board[12] <= 7;
            board[11] <= 6;
            board[10] <= 6;
            board[9] <= 6;
            board[8] <= 6;
            board[7] <= 2;
            board[6] <= 1;
            board[5] <= 0;
            board[4] <= 1;
            board[3] <= 2;
            board[2] <= 3;
            board[1] <= 4;
            board[0] <= 5;
        end
        state <= 0;
        status <= 0;
    end
    else
    begin
        state <= nextstate;
        status <= nextstatus;
         {board[15], board[14], board[13], board[12], board[11], board[10],
          board[9], board[8], board[7], board[6], board[5], board[4],
          board[3], board[2], board[1], board[0]} <= 
            {nboard[15], nboard[14], nboard[13], nboard[12], nboard[11], nboard[10],
            nboard[9], nboard[8], nboard[7], nboard[6], nboard[5], nboard[4],
            nboard[3], nboard[2], nboard[1], nboard[0]};
    end
end

endmodule
