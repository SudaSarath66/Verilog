`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda 
// 
// Create Date: 19.04.2025 22:54:37
// Design Name: 
// Module Name: comp_2_bit
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

module comp_2_bit(A, B, Eq, Lt, Gt);
    input [1:0] A, B;
    output Eq, Lt, Gt;

    wire eq0, eq1, lt0, lt1, gt0, gt1;

    // Compare LSBs
    Comp_1_bit c0(A[0], B[0], eq0, lt0, gt0);
    
    // Compare MSBs
    Comp_1_bit c1(A[1], B[1], eq1, lt1, gt1);

    assign Eq = eq0 & eq1;                    // Both bits must be equal
    assign Gt = gt1 | (eq1 & gt0);            // A > B if MSB greater or if MSBs equal & LSB > LSB
    assign Lt = lt1 | (eq1 & lt0);            // A < B if MSB less or if MSBs equal & LSB < LSB

endmodule

