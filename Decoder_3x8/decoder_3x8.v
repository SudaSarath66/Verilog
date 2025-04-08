`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda 

// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(a,b,c,y);
input a,b,c;
output [7:0]y;
assign y[0]=~a&~b&~c;
assign y[1]=~a&~b&c;
assign y[2]=~a&b&~c;
assign y[3]=~a&b&c;
assign y[4]=a&~b&~c;
assign y[5]=a&~b&c;
assign y[6]=a&b&~c;
assign y[7]=a&b&c;
endmodule
