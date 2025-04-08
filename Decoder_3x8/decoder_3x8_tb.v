`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda 
// Design Name: 
// Module Name: decoder_3x8_tb
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


module decoder_3x8_tb();
reg a,b,c;
wire [7:0]y;
decoder_3x8 dut(a,b,c,y);
initial
begin
      $monitor("Time=%0t | a=%b b=%b c=%b | y=%b", $time, a, b, c, y);
  a=0; b=0; c=0;
  #10 a=0; b=0; c=1;
  #10 a=0; b=1; c=0;
  #10 a=0; b=1; c=1;  
  #10 a=1; b=0; c=0;
  #10 a=1; b=0; c=1;
  #10 a=1; b=1; c=0;
  #10 a=1; b=1; c=1;  
  #10 $stop;
  end
endmodule
