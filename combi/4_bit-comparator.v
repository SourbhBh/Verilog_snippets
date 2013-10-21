module mag_compare(A_lt_B,A_eq_B,A_gt_B,A,B);
  output A_lt_B, A_gt_B, A_eq_B;
  input [3:0] A,B;

  assign A_lt_B =(A<B);
  assign A_gt_B =(A>B);
  assign A_eq_B =(A == B);
endmodule



