module test(input clk, input reset,
    input [1:0] io_in,
    output[1:0] io_out
);

  wire[1:0] T0;
  wire[1:0] T1;
  wire[1:0] T2;
  wire vwire_0;
  wire T3;
  reg[0:0] reg_vec2_0;
  wire T4;
  wire vwire_1;
  wire T5;
  reg[0:0] reg_vec2_1;
  wire T6;

`ifndef SYNTHESIS
  integer initvar;
  initial begin
    #0.002;
    reg_vec2_0 = {1{$random}};
    reg_vec2_1 = {1{$random}};
  end
`endif

  assign io_out = T0;
  assign T0 = T1;
  assign T1 = T2;
  assign T2 = {vwire_1, vwire_0};
  assign vwire_0 = T3;
  assign T3 = reg_vec2_0;
  assign T4 = io_in[1'h0:1'h0];
  assign vwire_1 = T5;
  assign T5 = reg_vec2_1;
  assign T6 = io_in[1'h1:1'h1];

  always @(posedge clk) begin
    reg_vec2_0 <= reset ? 1'h0 : T4;
    reg_vec2_1 <= reset ? 1'h0 : T6;
  end
endmodule

