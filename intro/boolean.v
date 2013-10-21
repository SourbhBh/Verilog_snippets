/*The purpose of this code is to demonstrate the use fo Boolean expressions
* What we did in gate_delay , we do the same except that we don''t use
* built-in gates,but this time boolean logic expressions
* Called IMPLICIT COMBINATIONAL LOGIC
*/

module Boolean(A,B,C,D,E);
  output E,F;
  input A,B,C,D;
  assign E = A||(B && C) ||((!B)&& D);
  assign F = ((!B)&&C) || (B&&(!C)&&(!D));
endmodule

