/* Purpose of this code is to demonstrate the use of User Defined Primitives
* Logic gates used in Verilog descriptions like and, or are referred to as
* system primitives
* User can define other primitives by defining them in tabular form. These
* are basically circuits. So the simplest way of defining these UDP are by
* truth table. Unlike other blocks of Verilog description 
* the specification of these UDP starts with primitive and ends with 
* endprimitive
*/


primitive UDP_something (D,A,B);
  output D;
  input A,B;

  table
//A B D //Header - ob any boolean shit can be expressed in minterms
  0 0:0;
  0 1:1;
  1 0:0;
  1 1:1;
  endtable
endprimitive

module Circuit_UDP(e,fg,a,b,c,d);
  output e,fg;
  input a,b,c,d;

  UDP_something(e,b,c);
  and (fg,e,d);
endmodule

