`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 22:33:33
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


module full_adder(a,b,c,sum,carry); 
input a,b,c;
output sum,carry;
wire [7:0]y;
decoder_3x8 d1(a,b,c,y);
assign sum = y[1]|y[2]|y[4]|y[7];
assign carry = y[3]|y[5]|y[6]|y[7];
endmodule
