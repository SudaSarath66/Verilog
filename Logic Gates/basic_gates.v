`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SARATH KUMAR SUDA
// 
// Create Date: 09.01.2025 13:08:39
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(A, B, Y);
  input A, B;
  output [0:6] Y;

  and a1(Y[0], A, B);
  or o1(Y[1], A, B);
  not n1(Y[2], A);
  nand n2(Y[3], A, B);
  nor n3(Y[4], A, B);
  xor x1(Y[5], A, B);
  xnor x2(Y[6], A, B);
endmodule
