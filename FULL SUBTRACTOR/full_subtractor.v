`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SARATH KUMAR SUDA
// 
// Create Date: 09.01.2025 18:05:43
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(A,B,Bin,Diff,Borrow);
input A,B,Bin;
output Diff,Borrow;
wire [0:4]W;

 xor x1( W[0],A, B);
 not n1(W[2],A);
 and a1( W[3], W[2],B);
 xor x2( Diff, W[0],Bin);
 not n2(W[1],W[0]);
 and a2(W[4],W[1],Bin);
 or o1(Borrow, W[4],W[3]);
endmodule
