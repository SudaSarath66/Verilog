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
reg [7:0]I;
reg [2:0]S;
wire Y;
mux_8x1 dut(I,S,Y);
initial begin
        $monitor("Time = %0t | S = %b | Y = %b", $time, S, Y);
I=8'b01100101;
S=3'b000; #10;
S=3'b001; #10;
S=3'b010; #10;
S=3'b011; #10;
S=3'b100; #10;
S=3'b101; #10;
S=3'b110; #10;
S=3'b111; #10;
#10; $stop;
end


endmodule
