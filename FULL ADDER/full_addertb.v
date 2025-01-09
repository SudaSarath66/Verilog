`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SARATH KUMAR SUDA
// 
// Create Date: 09.01.2025 17:25:13
// Design Name: 
// Module Name: full_addertb
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


module full_addertb();
reg A,B,Cin;
wire Sum,Ca;
full_adder dut(A,B,Cin,Sum,Ca);
initial
begin
  $monitor("Time: %0d | A = %b | B = %b | Cin = %b | Sum = %b | Carry = %b", 
              $time, A, B, Cin, Sum, Ca);

A=0; B=0; Cin=0;
#10 A=0; B=0; Cin=1;
#10 A=0; B=1; Cin=0;
#10 A=0; B=1; Cin=1;
#10 A=1; B=0; Cin=0;
#10 A=1; B=0; Cin=1;
#10 A=1; B=1; Cin=0;
#10 A=1; B=1; Cin=1;
#10 $stop;
end
endmodule
