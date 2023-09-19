# 实验 0 my_buf

> **实验人**: 智能 212 史胤隆 | **指导教师**: 余乐

使用 SystemVerilog 生成和调试一个由两个反相器组成的缓冲器.

- **my_buf.sv**

  ```systemverilog
  module my_buf(
    input logic din,
    output logic dout
  );
    logic temp;
    assign dout = ~temp;
    assign temp = ~din;
  endmodule
  ```

- **tb_my_buf.sv**

  ```systemverilog
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
  ```

- 输出波形

  ![01](./01.png)
