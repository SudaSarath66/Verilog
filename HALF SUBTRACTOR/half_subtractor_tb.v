`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module half_subtractor_tb();
reg A,Bin;
wire D,Bout;
half_subtractor dut(A,Bin,D,Bout);
initial
begin
$monitor("Input A=%b, Bin=%b, Output D =%b, Bout=%b",
                 A,Bin,D,Bout);
A=0;Bin=0;
#10 A=0;Bin=1;
#10 A=1;Bin=0;
#10 A=1;Bin=1;
#10 $stop;
end
endmodule

