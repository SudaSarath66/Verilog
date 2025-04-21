`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Sarath Kumar Suda
// 
// Create Date: 11.04.2025 22:23:04
// Design Name: 
// Module Name: demux_1x4
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
module demux_1x4(Din, S, Y);
    input Din;
    input [1:0] S;
    output [3:0] Y;

    wire [1:0] d;  // intermediate outputs from first stage

    // First stage: split Din based on MSB (S[1])
    demux_1x2 d1(Din, S[1], d);

    // Second stage: split each half based on LSB (S[0])
    demux_1x2 d2(d[0], S[0], Y[1:0]);  // Y[0] and Y[1]
    demux_1x2 d3(d[1], S[0], Y[3:2]);  // Y[2] and Y[3]
endmodule


