`timescale 1ns/1ns;
module tb_my_buf();
  logic din;
  logic dout;
  my_buf uut (
    .din  (din),
    .dout (dout)
  );
  initial begin 
        din = 1'b1;
    #10 din = 1'b0;
    #10 din = 1'b1;
    #10 ;
  end
endmodule
