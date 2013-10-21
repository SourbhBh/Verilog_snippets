module mux_2x1_beh (A,B,select,m_out);
  input A,B,select;
  output m_out;
  reg m_out;

  always @(A or B or select)
    if(select == 1) m_out = A;
    else m_out = B;
endmodule
