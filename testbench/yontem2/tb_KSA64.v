`timescale 1ns / 1ps

module tb_KSA64;

  wire [63:0] sum;
  wire cout;
  reg [63:0] a, b;

  
  KSA64 ksa64(sum[63:0], cout, a[63:0], b[63:0]);
  
  initial
  begin
    a=64'd998; b=64'd128;
    #10 a=64'd9998; b=64'd9028;
    #10 a=64'hfaaaaaaafaaaaaaa; b=64'hfaaaaaaadbbbbbbb;
    #10 a=64'd5; b=64'd5;

  end
endmodule
