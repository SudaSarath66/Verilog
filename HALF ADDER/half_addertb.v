`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module half_addertb();
reg a,b;
wire sum,carry;
half_adder dut(a,b,sum,carry);
initial
begin
$monitor("Input a=%b, b=%b, Output sum =%b, carry=%b",
                  a,b,sum,carry);
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $stop;
end
endmodule
