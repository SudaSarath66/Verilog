`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar suda 

// Design Name: 
// Module Name: decoder_2x4_tb
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


module decoder_2x4_tb();
reg A,B;
wire [3:0]Y;
decoder_2x4 dut(A,B,Y);
initial
begin
  $monitor("Time=%0t | A=%b B=%b | Y=%b", $time, A, B, Y);
    #10 A=0; B=0; 
     #10 A=0; B=1; 
      #10 A=1; B=0; 
       #10 A=1; B=1; 
       #10 $stop;
       end

endmodule
