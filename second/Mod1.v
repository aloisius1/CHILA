module Mod1(input clk,
    input  io_in01,
    output io_out01
);

  reg  registro00;

`ifndef SYNTHESIS
  integer initvar;
  initial begin
    #0.002;
    registro00 = {1{$random}};
  end
`endif

  assign io_out01 = registro00;

  always @(posedge clk) begin
    registro00 <= io_in01;
  end
endmodule

