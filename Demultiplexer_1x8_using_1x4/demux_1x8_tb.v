`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumaar Suda 
// 
// Create Date: 21.04.2025 21:43:16
// Design Name: 
// Module Name: demux_1x8_tb
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

module demux_1x8_tb();
    reg Din;
    reg [2:0] S;
    wire [7:0] Y;

    demux_1x8 uut(Din, S, Y);  // Instantiate the design

    initial begin
        $monitor("Time = %0t | Din = %b | S = %b | Y = %b", $time, Din, S, Y);

        Din = 1'b1;

        // Apply all select line combinations
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

