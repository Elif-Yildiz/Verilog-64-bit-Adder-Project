`timescale 1ns / 1ps
/*This step involves computation of generate and propagate signals corresponding too each
pair of bits in A and B. These signals are given by the logic equations below: 
//pi = Ai xor Bi(P)
//gi = Ai and Bi(G)

*/

module Kare(
output G, P, 
input Ai, Bi
);
  
  and #(1) (G, Ai, Bi);
  
  xor #(2) (P, Ai, Bi);
  
endmodule
