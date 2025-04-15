`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar suda
// Design Name: 
// Module Name: mux_8x1
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


module mux_8x1(I,S,Y);
input [7:0]I;
input [2:0]S;
output Y;
wire y0,y1;
mux_4x1 m1(I[3:0],S[1:0],y0);
mux_4x1 m2(I[7:4],S[1:0],y1);


assign Y = (~S[2] & y0) | (S[2] & y1); 
endmodule
