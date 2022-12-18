`timescale 1ns / 1ps

module Aktarma(
output Ci,
input Gi
);
  
  buf #(1) (Ci, Gi);
  
endmodule
