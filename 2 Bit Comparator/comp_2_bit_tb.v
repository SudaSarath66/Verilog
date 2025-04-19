`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda 
// 
// Create Date: 19.04.2025 22:54:55
// Design Name: 
// Module Name: comp_2_bit_tb
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

module comp_2_bit_tb();
    reg [1:0] A, B;
    wire Eq, Lt, Gt;

    comp_2_bit dut(A, B, Eq, Lt, Gt);

    initial begin
        $monitor("Time=%0t A=%b B=%b => Eq=%b Lt=%b Gt=%b", $time, A, B, Eq, Lt, Gt);
        
        A = 2'b00; B = 2'b00; #10;
        A = 2'b00; B = 2'b01; #10;
        A = 2'b01; B = 2'b00; #10;
        A = 2'b10; B = 2'b10; #10;
        A = 2'b10; B = 2'b11; #10;
        A = 2'b11; B = 2'b10; #10;
        A = 2'b11; B = 2'b11; #10;

        $stop;
    end
endmodule

