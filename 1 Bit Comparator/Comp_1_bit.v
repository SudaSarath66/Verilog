`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 21:45:35
// Design Name: 
// Module Name: Comp_1_bit
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


module Comp_1_bit(A,B,Eq,Le,Gt);
input A,B;
output Eq,Le,Gt;
assign Eq=~(A ^ B);
assign Le= ~A & B;
assign Gt= A & ~B;

endmodule
