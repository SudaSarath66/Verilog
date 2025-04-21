`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2025 21:29:41
// Design Name: 
// Module Name: full_adder
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


module full_adder(A,B,C,Sum,Carry);
input A,B,C;
output Sum,Carry;
wire[0:2]w;
xor (w[0],A,B);
and (w[1],A,B);
xor (Sum,w[0],C);
and (w[2],w[0],C);
or (Carry,w[2],w[1]);
endmodule
