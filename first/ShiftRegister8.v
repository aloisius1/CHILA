module ShiftRegister8(input clk, input reset,
    input [7:0] io_in,
    input  io_enable,
    output[7:0] io_out
);

  wire[7:0] T0;
  reg[0:0] r0;
  wire T1;
  wire T2;
  wire T3;
  wire T4;
  wire T5;
  wire[6:0] T6;
  reg[0:0] r1;
  wire T7;
  wire T8;
  wire T9;
  wire[5:0] T10;
  reg[0:0] r2;
  wire T11;
  wire T12;
  wire T13;
  wire[4:0] T14;
  reg[0:0] r3;
  wire T15;
  wire T16;
  wire T17;
  wire[3:0] T18;
  reg[0:0] r4;
  wire T19;
  wire T20;
  wire T21;
  wire[2:0] T22;
  reg[0:0] r5;
  wire T23;
  wire T24;
  wire T25;
  wire[1:0] T26;
  reg[0:0] r6;
  wire T27;
  wire T28;
  wire T29;
  reg[0:0] r7;
  wire T30;
  wire T31;
  wire T32;

`ifndef SYNTHESIS
  integer initvar;
  initial begin
    #0.002;
    r0 = {1{$random}};
    r1 = {1{$random}};
    r2 = {1{$random}};
    r3 = {1{$random}};
    r4 = {1{$random}};
    r5 = {1{$random}};
    r6 = {1{$random}};
    r7 = {1{$random}};
  end
`endif

  assign io_out = T0;
  assign T0 = {T6, r0};
  assign T1 = reset | T2;
  assign T2 = T3 & io_enable;
  assign T3 = reset == 1'h0;
  assign T4 = T2 ? T5 : 1'h0;
  assign T5 = io_in[1'h0:1'h0];
  assign T6 = {T10, r1};
  assign T7 = reset | T2;
  assign T8 = T2 ? T9 : 1'h0;
  assign T9 = io_in[1'h1:1'h1];
  assign T10 = {T14, r2};
  assign T11 = reset | T2;
  assign T12 = T2 ? T13 : 1'h0;
  assign T13 = io_in[2'h2:2'h2];
  assign T14 = {T18, r3};
  assign T15 = reset | T2;
  assign T16 = T2 ? T17 : 1'h0;
  assign T17 = io_in[2'h3:2'h3];
  assign T18 = {T22, r4};
  assign T19 = reset | T2;
  assign T20 = T2 ? T21 : 1'h0;
  assign T21 = io_in[3'h4:3'h4];
  assign T22 = {T26, r5};
  assign T23 = reset | T2;
  assign T24 = T2 ? T25 : 1'h0;
  assign T25 = io_in[3'h5:3'h5];
  assign T26 = {r7, r6};
  assign T27 = reset | T2;
  assign T28 = T2 ? T29 : 1'h0;
  assign T29 = io_in[3'h6:3'h6];
  assign T30 = reset | T2;
  assign T31 = T2 ? T32 : 1'h0;
  assign T32 = io_in[3'h7:3'h7];

  always @(posedge clk) begin
    if(T1) begin
      r0 <= T4;
    end
    if(T7) begin
      r1 <= T8;
    end
    if(T11) begin
      r2 <= T12;
    end
    if(T15) begin
      r3 <= T16;
    end
    if(T19) begin
      r4 <= T20;
    end
    if(T23) begin
      r5 <= T24;
    end
    if(T27) begin
      r6 <= T28;
    end
    if(T30) begin
      r7 <= T31;
    end
  end
endmodule

