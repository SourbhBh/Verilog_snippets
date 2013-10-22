module D_latch(Q,D,enable);
  output Q;
  input D,enable;
  reg Q;
  always @(enable or D)
    if (enable) Q <= D;
endmodule

module t_D_latch;
  wire q;
  reg D,enable;
  D_latch M1(q,D,enable);
  initial 
  begin
      enable = 0;
      D = 0;
  end
  initial #300 $finish;
  always #5 enable = ~enable;
  always #4 D = ~D;


endmodule 

module de;
initial
begin
    $dumpfile("latch.vcd");
    $dumpvars(1,t_D_latch.M1);
end
endmodule
/* =====================================================================================
* Activity can be controlled by a delay operator that waits for a certain 
* time or event control operator that waits for certain conditions to
* become true or for specified events to occur.
*
* always @(event control expression) begin
* [Procedural statements]
* end
* Variables in the left hand side of procedural statements must be of reg
* data type
* Event control expression or sensitivity list specifies events that must
* occur to initiate execution of procedural statements
* ======================================================================================
/

/*======================================================================================
*Procedural assignment is an assignment of a logic value to a variable 
within an initial or always statement
A continuous assignment has an implicit level sensitive sensitivity list 
consisting of all variables on the right hand side of its assignment statement
There are two kinds of procedural assignment statements - blocking and non-blocking 
Non blocking is basically used for modelling concurrent specs
Blocking is for sequential ordering and all
========================================================================================
