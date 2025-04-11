`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Sarath Kumar Suda
// Design Name: 
// Module Name: demux_1x2_tb
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


module demux_1x2_tb;
    reg Din;
    reg S;
    wire [1:0] Y;

    demux_1x2 dut(Din, S, Y);

    initial begin
        $display("Time\tDin\tS\tY[1]\tY[0]");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, Din, S, Y[1], Y[0]);

        Din = 1'b1; S = 1'b0; #10;
        S = 1'b1;             #10;
        Din = 1'b0; S = 1'b0; #10;
        S = 1'b1;             #10;
        $stop;
    end
endmodule

