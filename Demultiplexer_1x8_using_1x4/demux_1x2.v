`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2(Din,S,Y );
input Din;
input S;
output [1:0]Y;
assign Y[0] = Din&~S;
assign Y[1] = Din&S;
endmodule
