module Decoder(
    input [1:0] io_WADD,
    output io_CTRL_0,
    output io_CTRL_1,
    output io_CTRL_2,
    output io_CTRL_3
);

  wire T0;
  wire[3:0] T1;
  wire[6:0] T2;
  wire[1:0] T3;
  wire T4;
  wire T5;
  wire T6;


  assign io_CTRL_3 = T0;
  assign T0 = T1[2'h3:2'h3];
  assign T1 = T2[2'h3:1'h0];
  assign T2 = 4'h1 << T3;
  assign T3 = io_WADD;
  assign io_CTRL_2 = T4;
  assign T4 = T1[2'h2:2'h2];
  assign io_CTRL_1 = T5;
  assign T5 = T1[1'h1:1'h1];
  assign io_CTRL_0 = T6;
  assign T6 = T1[1'h0:1'h0];
endmodule

