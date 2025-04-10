`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(I,S,Y);
input [3:0]I;
input [1:0]S;
output Y;
assign Y = (I[0]&~S[0]&~S[1] | I[1]&~S[1]&S[0] | I[2]&S[1]&~S[0] | I[3]&S[1]&S[0] );
endmodule
