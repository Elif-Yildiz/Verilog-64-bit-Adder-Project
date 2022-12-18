`timescale 1ns / 1ps
/*
 This step involves computation of carries corresponding to each bit. It uses
group propagate and generate as intermediate signals which are given by the logic
equations below:
Pi:j = Pi:k+1 and Pk:j
Gi:j = Gi:k+1 or (Pi:k+1 and Gk:j )

*/
module Cember(
output G, P, 
input Gi, Pi, GiPrev, PiPrev
);
  
  wire e;
  
  and #(1) (e, Pi, GiPrev);
  
  or #(1) (G, e, Gi);
  
  and #(1) (P, Pi, PiPrev);
  
endmodule
