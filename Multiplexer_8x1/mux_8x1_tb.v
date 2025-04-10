`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda
// Design Name: 
// Module Name: mux_8x1_tb
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

module mux_8x1_tb();
    reg [7:0] I;
    reg [2:0] S;
    wire Y;

    // Instantiate the DUT (Device Under Test)
    mux_8x1 dut(I, S, Y);

    initial begin
        // Monitor the signal values at each simulation step
        $monitor("Time=%0t | I=%b | S=%b | Y=%b", $time, I, S, Y);

        // Test vector
        I = 8'b10101010; // Alternate 1s and 0s

        S = 3'b000; #10;
        S = 3'b001; #10;
        S = 3'b010; #10;
        S = 3'b011; #10;
        S = 3'b100; #10;
        S = 3'b101; #10;
        S = 3'b110; #10;
        S = 3'b111; #10;

        $stop;
    end
endmodule
