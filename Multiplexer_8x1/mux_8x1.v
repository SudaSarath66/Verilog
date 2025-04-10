`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda
// Design Name: 
// Module Name: mux_8x1
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


module mux_8x1(I, S, Y);
    input [7:0] I;
    input [2:0] S;
    output Y;

    assign Y = I[0] & ~S[2] & ~S[1] & ~S[0] |
               I[1] & ~S[2] & ~S[1] &  S[0] |
               I[2] & ~S[2] &  S[1] & ~S[0] |
               I[3] & ~S[2] &  S[1] &  S[0] |
               I[4] &  S[2] & ~S[1] & ~S[0] |
               I[5] &  S[2] & ~S[1] &  S[0] |
               I[6] &  S[2] &  S[1] & ~S[0] |
               I[7] &  S[2] &  S[1] &  S[0];
endmodule

