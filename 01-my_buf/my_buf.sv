module my_buf(
  input logic din,
  output logic dout
);
  logic temp;
  assign dout = ~temp;
  assign temp = ~din;
endmodule
