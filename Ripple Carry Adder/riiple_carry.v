`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2025 22:46:11
// Design Name: 
// Module Name: riiple_carry
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


module riiple_carry(A,B,Cin,Sum,Cout);
input [3:0]A,B;
input Cin;
output [3:0]Sum;
output Cout;
wire c1,c2,c3;
  full_adder f00(A[0],B[0],Cin,Sum[0], c1);
  full_adder f01(A[1],B[1],c1,Sum[1], c2);
  full_adder f02(A[2],B[2],c2,Sum[2], c3); 
  full_adder f03(A[3],B[3],c3,Sum[3], Cout);
      
endmodule
