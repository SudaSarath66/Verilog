`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2025 18:06:11
// Design Name: 
// Module Name: full_subtractortb
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


module full_subtractortb();
reg A,B,Bin;
wire Diff,Borrow;
full_subtractor dut(A,B,Bin,Diff,Borrow);
initial
begin
  $monitor("Time: %0d | A = %b | B = %b | Bin = %b | Diff = %b | Borrow = %b", 
              $time, A, B, Bin, Diff, Borrow);

A=0; B=0; Bin=0;
#10 A=0; B=0; Bin=1;
#10 A=0; B=1; Bin=0;
#10 A=0; B=1; Bin=1;
#10 A=1; B=0; Bin=0;
#10 A=1; B=0; Bin=1;
#10 A=1; B=1; Bin=0;
#10 A=1; B=1; Bin=1;
#10 $stop;
end
endmodule
