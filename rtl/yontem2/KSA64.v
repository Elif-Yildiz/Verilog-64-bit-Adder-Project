`timescale 1ns / 1ps

module KSA64(
output [63:0] sum, 
output cout, 
input [63:0] a, b
);
  
  
  wire [63:0] c;
  wire [63:0] g, p;
  Kare sq[63:0](g, p, a, b);

  // 1.sýra
  wire [63:1] g2, p2;
  Aktarma sc0_0(c[0], g[0]);
  Cember bc0[63:1](g2[63:1], p2[63:1], g[63:1], p[63:1], g[62:0], p[62:0]);

  // 2.sýra
  wire [63:3] g3, p3;
  Aktarma sc1[2:1](c[2:1], g2[2:1]);
  Cember bc1[63:3](g3[63:3], p3[63:3], g2[63:3], p2[63:3], g2[61:1], p2[61:1]);
    
  // 3.sýra
  wire [63:7] g4, p4;
  Aktarma sc2[6:3](c[6:3], g3[6:3]);
  Cember bc2[63:7](g4[63:7], p4[63:7], g3[63:7], p3[63:7], g3[59:3], p3[59:3]);
  
  // 4.sýra
  wire [63:15] g5, p5;
  Aktarma sc3[14:7](c[14:7], g4[14:7]);
  Cember bc3[63:15](g5[63:15], p5[63:15], g4[63:15], p4[63:15], g4[55:7], p4[55:7]);
        
  // 5.sýra
  wire [63:31] g6, p6;
  Aktarma sc4[30:15](c[30:15], g5[30:15]);
  Cember bc4[63:31](g6[63:31], p6[63:31], g5[63:31], p5[63:31], g5[47:15], p5[47:15]);
  
  // 6.sýra
  wire [63:63] g7, p7;
  Aktarma sc5[62:31](c[62:31], g6[62:31]);  
  Cember bc4_63(g7[63], p7[63], g6[63], p6[63], g6[31], p6[31]);

  // 7.sýra
  Cember sc6(c[63], g7[63]);  

  // Ucgenler
  Ucgen tr0(sum[0], p[0], 0);
  Ucgen tr[63:1](sum[63:1], p[63:1], c[62:0]);

  // Elde
  buf #(1) (cout, c[63]);

endmodule