`timescale 1ns/100ps
module decoder_2x4_gates(D,A,B,enable);
  output [0:3] D; //This describes a 4 port vector with most significant bit being 0
  input A,B,enable;
  wire A_not,B_not,enable_not;

  not
  G1 (A_not,A), G2 (B_not,B), G3 (enable_not,enable);
  nand
  G4 (D[0],A_not,B_not,enable_not),
  G5 (D[1],A_not,B,enable_not),
  G6 (D[2],A,B_not,enable_not),
  G7 (D[3],A,B,enable_not);
endmodule

module t_decoder;
  wire [0:3] D;
  reg A,B,enable;
  decoder_2x4_gates M1(D,A,B,enable);
  initial 
  begin
      A=1'b0; B=1'b0; enable=1'b0;
      #100 A=1'b1; B=1'b1; enable=1'b0;
      #100 A=1'b1; B=1'b1; enable=1'b1;
      #100 A=1'b0; B=1'b1; enable=1'b0;
  end
  initial #500 $finish;
endmodule
module de;
initial 
begin
    $dumpfile("decoder.vcd"); //
    $dumpvars(1,t_decoder.M1);
end
endmodule
