`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: SARATH KUMAR SUDA
// 
// Create Date: 09.01.2025 13:09:05
// Design Name: 
// Module Name: basic_gatestb
// Project Name: 
// Target Devices: 
// Tool Versions: s
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module basic_gatestb();
  reg A, B;
  wire [0:6] Y;

  // Corrected module instantiation
  basic_gates dut(A, B, Y);

  initial begin
    A = 0; B = 0; 
    #10 A = 0; B = 1; 
    #10 A = 1; B = 0; 
    #10 A = 1; B = 1; 
    #10 $stop; 
  end
endmodule
