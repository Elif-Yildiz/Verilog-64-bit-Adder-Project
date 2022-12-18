`timescale 1ns / 1ps
/*
This is the final step and is common to all adders of this family (carry look ahead). It
involves computation of sum bits. Sum bits are computed by the logic given below:
Si = pi xor Ci-1
*/
module Ucgen(
output Si, 
input Pi, CiPrev
);
  
  xor #(2) (Si, Pi, CiPrev);
  
endmodule
