module Simple_Circuit(A,B,C,D,E);
  output D,E;
  input A,B,C;
  wire w1;

  and G1(w1,A,B); //Note:Output is passed first - unlike module where inputs and outputs can be passed in any order
  not G2(E,C);
  or G3(D,w1,E);
endmodule
/* Please note that this is a module DECLARATION and we haven't yet
* INSTANTIATED our module
* Also remember that any model in Verilog is a descriptive model
* Unlike programming languages, the sequential ordering has absolutely no
* significance
*/
