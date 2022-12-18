`timescale 1ns / 1ps

module tb_CSkipA64;
  wire [63:0] sum;
  wire cout;
  reg [63:0] a, b;
  reg cin;
  
  CSkipA64 csa64(sum[63:0], cout, a[63:0], b[63:0]);
  
  initial begin
    a=64'd118; b=64'd267;
    #10 a=64'd3456; b=64'd9876;
    #10 a=64'd987654; b=64'd749028;

  end

endmodule
