//Without reset
module D_flipflop(Q,D,Clk);
  output Q;
  input D, Clk;
  reg Q;
  always @(posedge Clk)
    Q <= D;
endmodule

module t_D_flipflop;
  wire Q;
  reg D,Clk;
  D_flipflop M1(Q,D,Clk);
  initial
  begin
      Clk = 0;
      D = 0;
  end
  initial #300 $finish;
  always #5 Clk = ~Clk; //There is a reason why I chose 4,5 and not 3,5
  always #4 D = ~D;
endmodule

module de;
initial 
begin
    $dumpfile("ffloip.vcd");
    $dumpvars(1,t_D_flipflop.M1);
end
endmodule


