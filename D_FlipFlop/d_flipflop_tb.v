`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda
// Design Name: 
// Module Name: d_flipflop_tb
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


module d_flipflop_tb();
reg d,clk;
wire q;
d_flipflop dut(d,clk,q);
initial
begin 
  clk=0;
 forever #5 clk=~clk;
 end
 initial
 begin
  $display("Time(ns)\tclk\td\tq");
        $monitor("%0dns\t%b\t%b\t%b", $time, clk, d, q);
  #10 d=0;
  #10 d=1;
  #10 d=0;
  #10 d=1;
  #10 d=1;
  #10 d=0;
  #10 $stop;
  end
endmodule
