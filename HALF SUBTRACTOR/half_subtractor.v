`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// 
//////////////////////////////////////////////////////////////////////////////////

module half_subtractor(A,Bin,D,Bout);
input A, Bin;
 output D, Bout;
  wire w;

  xor X1(D, A, Bin);
  not N1(w, A);
  and A1(Bout, w, Bin); 

endmodule