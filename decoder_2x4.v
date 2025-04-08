`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda 
// 
// Design Name: 
// Module Name: decoder_2x4
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



module decoder_2x4(A,B,Y);
input A,B;
output [3:0]Y;
wire [1:0]w;
not n1(w[0],A);
not n2(w[1],B);
and a1(Y[0],w[0],w[1]);
and a2(Y[1],w[0],B);
and a3(Y[2],A,w[1]);
and a4(Y[3],A,B);
endmodule
