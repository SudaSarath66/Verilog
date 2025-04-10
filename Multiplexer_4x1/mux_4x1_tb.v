`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb();
reg [3:0]I;
reg [1:0]S;
wire Y;
mux_4x1 dut(I,S,Y);
initial 
begin
$monitor("Time=%0t | I=%b | S=%b | Y=%b", $time, I, S, Y);
I = 4'b0110;
   S = 2'b00;
   #10 S = 2'b01;
   #10 S = 2'b10;
   #10 S = 2'b11;
   #10 $stop;
   end
endmodule
