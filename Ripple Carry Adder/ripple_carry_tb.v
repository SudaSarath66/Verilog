`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2025 22:46:46
// Design Name: 
// Module Name: ripple_carry_tb
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


module ripple_carry_tb();
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    riiple_carry DUT (A, B, Cin, Sum, Cout);

    initial begin
        $monitor("Time = %0t | A = %b | B = %b | Cin = %b || Sum = %b | Cout = %b", 
                 $time, A, B, Cin, Sum, Cout);
        
        // Test Cases
        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        A = 4'b0101; B = 4'b0011; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;

       # 10; $stop;
    end
endmodule

