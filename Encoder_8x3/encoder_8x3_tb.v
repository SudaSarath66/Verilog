`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda 

// Design Name: 
// Module Name: encoder_8x3_tb
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

module encoder_8x3_tb();
    reg [7:0] d;
    wire a, b, c;

    encoder_8x3 dut(d,a,b,c);

    initial begin
          $display("Time(ns)\tD\t\t\tABC");
        $monitor("%0t\t%b\t%b%b%b", $time, d, a, b, c);
       
        d = 8'b00000001; #10; // Expect 000
        d = 8'b00000010; #10; // Expect 001
        d = 8'b00000100; #10; // Expect 010
        d = 8'b00001000; #10; // Expect 011
        d = 8'b00010000; #10; // Expect 100
        d = 8'b00100000; #10; // Expect 101
        d = 8'b01000000; #10; // Expect 110
        d = 8'b10000000; #10; // Expect 111

        $stop;
    end
endmodule

