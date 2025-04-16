`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 21:45:58
// Design Name: 
// Module Name: Comp_1_bit_tb
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


module Comp_1_bit_tb();
reg A,B;
wire Eq,Le,Gt;
Comp_1_bit dut(A,B,Eq,Le,Gt);
initial begin
$monitor("Inputs A = %b, B = %b, Outputs Gt = %b, Eq = %b, Le = %b",A,B,Gt,Eq,Le);
 A=0; B=0;
 #10; A=0; B=1;
 #10 A=1; B=0;
 #10 A=1; B=1;
 #10; $stop;
 end
endmodule
