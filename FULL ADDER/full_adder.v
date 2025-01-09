`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SARATH KUMAR SUDA
// 
// Create Date: 09.01.2025 17:24:44
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


module full_adder(A,B,Cin,Sum,Ca);
input A,B,Cin;
output Sum,Ca;
wire [0:2]W;

 xor x1( W[0],A, B);
 and a1( W[1], A,B);
 xor x2( Sum, W[0],Cin);
 and a2(W[2],W[0],Cin);
 or o1(Ca, W[2],W[1]);
 
endmodule
