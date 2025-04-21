`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Sarath Kumar Suda
// 
// Create Date: 21.04.2025 21:42:51
// Design Name: 
// Module Name: demux_1x8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module demux_1x8(Din, S, Y);
    input Din;
    input [2:0] S;
    output [7:0] Y;

    wire [1:0] d;  // output from 1x2 stage

    demux_1x2 stage1(Din, S[2], d);
    demux_1x4 stage2(d[0], S[1:0], Y[3:0]);
    demux_1x4 stage3(d[1], S[1:0], Y[7:4]);
endmodule
