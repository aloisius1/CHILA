module DFF(input clk,
    input  io_D,
    input  io_EN,
    output io_Q
);

  reg[0:0] r0;
  wire T0;

`ifndef SYNTHESIS
  integer initvar;
  initial begin
    #0.002;
    r0 = {1{$random}};
  end
`endif

  assign io_Q = r0;
  assign T0 = io_EN == 1'h1;

  always @(posedge clk) begin
    if(T0) begin
      r0 <= io_D;
    end
  end
endmodule

