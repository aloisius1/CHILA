module NRegisterE(input clk,
    input [7:0] io_D,
    output[7:0] io_Q,
    input  io_enable
);

  wire[7:0] T0;
  wire[7:0] T1;
  wire[7:0] T2;
  wire vbool_0;
  wire T3;
  reg[0:0] vectreg_0;
  wire T4;
  wire[6:0] T5;
  wire vbool_1;
  wire T6;
  reg[0:0] vectreg_1;
  wire T7;
  wire[5:0] T8;
  wire vbool_2;
  wire T9;
  reg[0:0] vectreg_2;
  wire T10;
  wire[4:0] T11;
  wire vbool_3;
  wire T12;
  reg[0:0] vectreg_3;
  wire T13;
  wire[3:0] T14;
  wire vbool_4;
  wire T15;
  reg[0:0] vectreg_4;
  wire T16;
  wire[2:0] T17;
  wire vbool_5;
  wire T18;
  reg[0:0] vectreg_5;
  wire T19;
  wire[1:0] T20;
  wire vbool_6;
  wire T21;
  reg[0:0] vectreg_6;
  wire T22;
  wire vbool_7;
  wire T23;
  reg[0:0] vectreg_7;
  wire T24;

`ifndef SYNTHESIS
  integer initvar;
  initial begin
    #0.002;
    vectreg_0 = {1{$random}};
    vectreg_1 = {1{$random}};
    vectreg_2 = {1{$random}};
    vectreg_3 = {1{$random}};
    vectreg_4 = {1{$random}};
    vectreg_5 = {1{$random}};
    vectreg_6 = {1{$random}};
    vectreg_7 = {1{$random}};
  end
`endif

  assign io_Q = T0;
  assign T0 = T1;
  assign T1 = T2;
  assign T2 = {T5, vbool_0};
  assign vbool_0 = T3;
  assign T3 = vectreg_0;
  assign T4 = io_D[1'h0:1'h0];
  assign T5 = {T8, vbool_1};
  assign vbool_1 = T6;
  assign T6 = vectreg_1;
  assign T7 = io_D[1'h1:1'h1];
  assign T8 = {T11, vbool_2};
  assign vbool_2 = T9;
  assign T9 = vectreg_2;
  assign T10 = io_D[2'h2:2'h2];
  assign T11 = {T14, vbool_3};
  assign vbool_3 = T12;
  assign T12 = vectreg_3;
  assign T13 = io_D[2'h3:2'h3];
  assign T14 = {T17, vbool_4};
  assign vbool_4 = T15;
  assign T15 = vectreg_4;
  assign T16 = io_D[3'h4:3'h4];
  assign T17 = {T20, vbool_5};
  assign vbool_5 = T18;
  assign T18 = vectreg_5;
  assign T19 = io_D[3'h5:3'h5];
  assign T20 = {vbool_7, vbool_6};
  assign vbool_6 = T21;
  assign T21 = vectreg_6;
  assign T22 = io_D[3'h6:3'h6];
  assign vbool_7 = T23;
  assign T23 = vectreg_7;
  assign T24 = io_D[3'h7:3'h7];

  always @(posedge clk) begin
    if(io_enable) begin
      vectreg_0 <= T4;
    end
    if(io_enable) begin
      vectreg_1 <= T7;
    end
    if(io_enable) begin
      vectreg_2 <= T10;
    end
    if(io_enable) begin
      vectreg_3 <= T13;
    end
    if(io_enable) begin
      vectreg_4 <= T16;
    end
    if(io_enable) begin
      vectreg_5 <= T19;
    end
    if(io_enable) begin
      vectreg_6 <= T22;
    end
    if(io_enable) begin
      vectreg_7 <= T24;
    end
  end
endmodule

