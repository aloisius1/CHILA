module Mux2(
    input  io_sel,
    input  io_in0,
    input  io_in1,
    output io_out
);

  wire T0;
  wire T1;
  wire T2;
  wire T3;


  assign io_out = T0;
  assign T0 = T3 | T1;
  assign T1 = T2 & io_in0;
  assign T2 = ~ io_sel;
  assign T3 = io_sel & io_in1;
endmodule

