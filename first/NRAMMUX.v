module NRegisterE(input clk, input reset,
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
  wire T5;
  wire T6;
  wire T7;
  wire T8;
  wire[6:0] T9;
  wire vbool_1;
  wire T10;
  reg[0:0] vectreg_1;
  wire T11;
  wire T12;
  wire T13;
  wire T14;
  wire T15;
  wire[5:0] T16;
  wire vbool_2;
  wire T17;
  reg[0:0] vectreg_2;
  wire T18;
  wire T19;
  wire T20;
  wire T21;
  wire T22;
  wire[4:0] T23;
  wire vbool_3;
  wire T24;
  reg[0:0] vectreg_3;
  wire T25;
  wire T26;
  wire T27;
  wire T28;
  wire T29;
  wire[3:0] T30;
  wire vbool_4;
  wire T31;
  reg[0:0] vectreg_4;
  wire T32;
  wire T33;
  wire T34;
  wire T35;
  wire T36;
  wire[2:0] T37;
  wire vbool_5;
  wire T38;
  reg[0:0] vectreg_5;
  wire T39;
  wire T40;
  wire T41;
  wire T42;
  wire T43;
  wire[1:0] T44;
  wire vbool_6;
  wire T45;
  reg[0:0] vectreg_6;
  wire T46;
  wire T47;
  wire T48;
  wire T49;
  wire T50;
  wire vbool_7;
  wire T51;
  reg[0:0] vectreg_7;
  wire T52;
  wire T53;
  wire T54;
  wire T55;
  wire T56;

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
  assign T2 = {T9, vbool_0};
  assign vbool_0 = T3;
  assign T3 = vectreg_0;
  assign T4 = reset | T5;
  assign T5 = T6 & io_enable;
  assign T6 = reset == 1'h0;
  assign T7 = T5 ? T8 : 1'h0;
  assign T8 = io_D[1'h0:1'h0];
  assign T9 = {T16, vbool_1};
  assign vbool_1 = T10;
  assign T10 = vectreg_1;
  assign T11 = reset | T12;
  assign T12 = T13 & io_enable;
  assign T13 = reset == 1'h0;
  assign T14 = T12 ? T15 : 1'h0;
  assign T15 = io_D[1'h1:1'h1];
  assign T16 = {T23, vbool_2};
  assign vbool_2 = T17;
  assign T17 = vectreg_2;
  assign T18 = reset | T19;
  assign T19 = T20 & io_enable;
  assign T20 = reset == 1'h0;
  assign T21 = T19 ? T22 : 1'h0;
  assign T22 = io_D[2'h2:2'h2];
  assign T23 = {T30, vbool_3};
  assign vbool_3 = T24;
  assign T24 = vectreg_3;
  assign T25 = reset | T26;
  assign T26 = T27 & io_enable;
  assign T27 = reset == 1'h0;
  assign T28 = T26 ? T29 : 1'h0;
  assign T29 = io_D[2'h3:2'h3];
  assign T30 = {T37, vbool_4};
  assign vbool_4 = T31;
  assign T31 = vectreg_4;
  assign T32 = reset | T33;
  assign T33 = T34 & io_enable;
  assign T34 = reset == 1'h0;
  assign T35 = T33 ? T36 : 1'h0;
  assign T36 = io_D[3'h4:3'h4];
  assign T37 = {T44, vbool_5};
  assign vbool_5 = T38;
  assign T38 = vectreg_5;
  assign T39 = reset | T40;
  assign T40 = T41 & io_enable;
  assign T41 = reset == 1'h0;
  assign T42 = T40 ? T43 : 1'h0;
  assign T43 = io_D[3'h5:3'h5];
  assign T44 = {vbool_7, vbool_6};
  assign vbool_6 = T45;
  assign T45 = vectreg_6;
  assign T46 = reset | T47;
  assign T47 = T48 & io_enable;
  assign T48 = reset == 1'h0;
  assign T49 = T47 ? T50 : 1'h0;
  assign T50 = io_D[3'h6:3'h6];
  assign vbool_7 = T51;
  assign T51 = vectreg_7;
  assign T52 = reset | T53;
  assign T53 = T54 & io_enable;
  assign T54 = reset == 1'h0;
  assign T55 = T53 ? T56 : 1'h0;
  assign T56 = io_D[3'h7:3'h7];

  always @(posedge clk) begin
    if(reset) begin
      vectreg_0 <= 1'h0;
    end else if(T4) begin
      vectreg_0 <= T7;
    end
    if(reset) begin
      vectreg_1 <= 1'h0;
    end else if(T11) begin
      vectreg_1 <= T14;
    end
    if(reset) begin
      vectreg_2 <= 1'h0;
    end else if(T18) begin
      vectreg_2 <= T21;
    end
    if(reset) begin
      vectreg_3 <= 1'h0;
    end else if(T25) begin
      vectreg_3 <= T28;
    end
    if(reset) begin
      vectreg_4 <= 1'h0;
    end else if(T32) begin
      vectreg_4 <= T35;
    end
    if(reset) begin
      vectreg_5 <= 1'h0;
    end else if(T39) begin
      vectreg_5 <= T42;
    end
    if(reset) begin
      vectreg_6 <= 1'h0;
    end else if(T46) begin
      vectreg_6 <= T49;
    end
    if(reset) begin
      vectreg_7 <= 1'h0;
    end else if(T52) begin
      vectreg_7 <= T55;
    end
  end
endmodule

module NRAM(input clk, input reset,
    input [7:0] io_Dbus,
    output[7:0] io_Qbus_0,
    output[7:0] io_Qbus_1,
    input [1:0] io_ENbus
);

  wire T0;
  wire T1;
  wire[7:0] NRegisterE_1_io_Q;
  wire[7:0] NRegisterE_0_io_Q;


  assign T0 = io_ENbus[1'h1:1'h1];
  assign T1 = io_ENbus[1'h0:1'h0];
  assign io_Qbus_1 = NRegisterE_1_io_Q;
  assign io_Qbus_0 = NRegisterE_0_io_Q;
  NRegisterE NRegisterE_0(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_0_io_Q ),
       .io_enable( T1 )
  );
  NRegisterE NRegisterE_1(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_1_io_Q ),
       .io_enable( T0 )
  );
endmodule

module NMux(
    input [7:0] io_Dvect_0,
    input [7:0] io_Dvect_1,
    output[7:0] io_Ovect,
    input  io_sel
);

  wire[7:0] T0;
  wire T1;


  assign io_Ovect = T0;
  assign T0 = T1 ? io_Dvect_1 : io_Dvect_0;
  assign T1 = io_sel;
endmodule

module NRAMMUX(input clk, input reset,
    input [7:0] io_D,
    output[7:0] io_Q,
    input  io_RADD
);

  wire[7:0] RAM_io_Qbus_1;
  wire[7:0] RAM_io_Qbus_0;


  NRAM RAM(.clk(clk), .reset(reset),
       //.io_Dbus(  )
       .io_Qbus_0( RAM_io_Qbus_0 ),
       .io_Qbus_1( RAM_io_Qbus_1 )
       //.io_ENbus(  )
  );
  `ifndef SYNTHESIS
    assign RAM.io_Dbus = {1{$random}};
    assign RAM.io_ENbus = {1{$random}};
  `endif
  NMux MUX1(
       .io_Dvect_0( RAM_io_Qbus_0 ),
       .io_Dvect_1( RAM_io_Qbus_1 ),
       //.io_Ovect(  )
       .io_sel( io_RADD )
  );
endmodule

