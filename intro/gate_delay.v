/*Purpose of this program
* 1) GATE DELAYS - Physically many a times, we have circuits with gate
* delays. Typically what is done is there is a timescalecompiler directive
* that relates time unit with physical time. Such a directive is specified
* before the declaration of the module and applies to all numerical values of
* time in the code that follows
* 2) Code for a simulator
*/

//Previous code with gate delays

`timescale 1ns/100ps

module Simple_Circuit(A,B,C,D,E);
  output D,E;
  input A,B,C;
  wire w1;

  and #(30) G1(w1,A,B);
  not #(20) G2(E,w1);
  or #(10) G3(D,w1,E);
endmodule

module t_Simple_Circuit ; //Note that no inputs or outputs are supplied
  wire D,E;
  reg A,B,C;
  Simple_Circuit M1(A,B,C,D,E);
  initial //initial is used whwnever you want to create a waveform
  begin
      A=1'b0; B=1'b0; C=1'b1;
      #100 A=1'b1; B=1'b1; C=1'b1;
  end
  initial #200 $finish;
endmodule

module de;
initial 
begin
    $dumpfile ("gate_delay.vcd"); // Change filename as appropriate. 
    $dumpvars(1, t_Simple_Circuit.M1); 
end
endmodule
