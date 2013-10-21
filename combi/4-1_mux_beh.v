module mux_4x1 (in, op, select);
  input [3:0] in;
  input [0:1] select;
  output op;
  reg op;

  always @ (in or select)
    case(select)
        2'b00: op=in[3];
        2'b01: op=in[2];
        2'b10: op=in[1];
        2'b11: op=in[0];
    endcase
endmodule
