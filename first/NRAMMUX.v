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
    output[7:0] io_Qbus_2,
    output[7:0] io_Qbus_3,
<<<<<<< HEAD
    input  io_ENbus_0,
    input  io_ENbus_1,
    input  io_ENbus_2,
    input  io_ENbus_3
);

=======
    output[7:0] io_Qbus_4,
    output[7:0] io_Qbus_5,
    output[7:0] io_Qbus_6,
    output[7:0] io_Qbus_7,
    output[7:0] io_Qbus_8,
    output[7:0] io_Qbus_9,
    output[7:0] io_Qbus_10,
    output[7:0] io_Qbus_11,
    output[7:0] io_Qbus_12,
    output[7:0] io_Qbus_13,
    output[7:0] io_Qbus_14,
    output[7:0] io_Qbus_15,
    output[7:0] io_Qbus_16,
    output[7:0] io_Qbus_17,
    output[7:0] io_Qbus_18,
    output[7:0] io_Qbus_19,
    output[7:0] io_Qbus_20,
    output[7:0] io_Qbus_21,
    output[7:0] io_Qbus_22,
    output[7:0] io_Qbus_23,
    output[7:0] io_Qbus_24,
    output[7:0] io_Qbus_25,
    output[7:0] io_Qbus_26,
    output[7:0] io_Qbus_27,
    output[7:0] io_Qbus_28,
    output[7:0] io_Qbus_29,
    output[7:0] io_Qbus_30,
    output[7:0] io_Qbus_31,
    output[7:0] io_Qbus_32,
    output[7:0] io_Qbus_33,
    output[7:0] io_Qbus_34,
    output[7:0] io_Qbus_35,
    output[7:0] io_Qbus_36,
    output[7:0] io_Qbus_37,
    output[7:0] io_Qbus_38,
    output[7:0] io_Qbus_39,
    output[7:0] io_Qbus_40,
    output[7:0] io_Qbus_41,
    output[7:0] io_Qbus_42,
    output[7:0] io_Qbus_43,
    output[7:0] io_Qbus_44,
    output[7:0] io_Qbus_45,
    output[7:0] io_Qbus_46,
    output[7:0] io_Qbus_47,
    output[7:0] io_Qbus_48,
    output[7:0] io_Qbus_49,
    output[7:0] io_Qbus_50,
    output[7:0] io_Qbus_51,
    output[7:0] io_Qbus_52,
    output[7:0] io_Qbus_53,
    output[7:0] io_Qbus_54,
    output[7:0] io_Qbus_55,
    output[7:0] io_Qbus_56,
    output[7:0] io_Qbus_57,
    output[7:0] io_Qbus_58,
    output[7:0] io_Qbus_59,
    output[7:0] io_Qbus_60,
    output[7:0] io_Qbus_61,
    output[7:0] io_Qbus_62,
    output[7:0] io_Qbus_63,
    input  io_ENbus_0,
    input  io_ENbus_1,
    input  io_ENbus_2,
    input  io_ENbus_3,
    input  io_ENbus_4,
    input  io_ENbus_5,
    input  io_ENbus_6,
    input  io_ENbus_7,
    input  io_ENbus_8,
    input  io_ENbus_9,
    input  io_ENbus_10,
    input  io_ENbus_11,
    input  io_ENbus_12,
    input  io_ENbus_13,
    input  io_ENbus_14,
    input  io_ENbus_15,
    input  io_ENbus_16,
    input  io_ENbus_17,
    input  io_ENbus_18,
    input  io_ENbus_19,
    input  io_ENbus_20,
    input  io_ENbus_21,
    input  io_ENbus_22,
    input  io_ENbus_23,
    input  io_ENbus_24,
    input  io_ENbus_25,
    input  io_ENbus_26,
    input  io_ENbus_27,
    input  io_ENbus_28,
    input  io_ENbus_29,
    input  io_ENbus_30,
    input  io_ENbus_31,
    input  io_ENbus_32,
    input  io_ENbus_33,
    input  io_ENbus_34,
    input  io_ENbus_35,
    input  io_ENbus_36,
    input  io_ENbus_37,
    input  io_ENbus_38,
    input  io_ENbus_39,
    input  io_ENbus_40,
    input  io_ENbus_41,
    input  io_ENbus_42,
    input  io_ENbus_43,
    input  io_ENbus_44,
    input  io_ENbus_45,
    input  io_ENbus_46,
    input  io_ENbus_47,
    input  io_ENbus_48,
    input  io_ENbus_49,
    input  io_ENbus_50,
    input  io_ENbus_51,
    input  io_ENbus_52,
    input  io_ENbus_53,
    input  io_ENbus_54,
    input  io_ENbus_55,
    input  io_ENbus_56,
    input  io_ENbus_57,
    input  io_ENbus_58,
    input  io_ENbus_59,
    input  io_ENbus_60,
    input  io_ENbus_61,
    input  io_ENbus_62,
    input  io_ENbus_63
);

  wire[7:0] NRegisterE_63_io_Q;
  wire[7:0] NRegisterE_62_io_Q;
  wire[7:0] NRegisterE_61_io_Q;
  wire[7:0] NRegisterE_60_io_Q;
  wire[7:0] NRegisterE_59_io_Q;
  wire[7:0] NRegisterE_58_io_Q;
  wire[7:0] NRegisterE_57_io_Q;
  wire[7:0] NRegisterE_56_io_Q;
  wire[7:0] NRegisterE_55_io_Q;
  wire[7:0] NRegisterE_54_io_Q;
  wire[7:0] NRegisterE_53_io_Q;
  wire[7:0] NRegisterE_52_io_Q;
  wire[7:0] NRegisterE_51_io_Q;
  wire[7:0] NRegisterE_50_io_Q;
  wire[7:0] NRegisterE_49_io_Q;
  wire[7:0] NRegisterE_48_io_Q;
  wire[7:0] NRegisterE_47_io_Q;
  wire[7:0] NRegisterE_46_io_Q;
  wire[7:0] NRegisterE_45_io_Q;
  wire[7:0] NRegisterE_44_io_Q;
  wire[7:0] NRegisterE_43_io_Q;
  wire[7:0] NRegisterE_42_io_Q;
  wire[7:0] NRegisterE_41_io_Q;
  wire[7:0] NRegisterE_40_io_Q;
  wire[7:0] NRegisterE_39_io_Q;
  wire[7:0] NRegisterE_38_io_Q;
  wire[7:0] NRegisterE_37_io_Q;
  wire[7:0] NRegisterE_36_io_Q;
  wire[7:0] NRegisterE_35_io_Q;
  wire[7:0] NRegisterE_34_io_Q;
  wire[7:0] NRegisterE_33_io_Q;
  wire[7:0] NRegisterE_32_io_Q;
  wire[7:0] NRegisterE_31_io_Q;
  wire[7:0] NRegisterE_30_io_Q;
  wire[7:0] NRegisterE_29_io_Q;
  wire[7:0] NRegisterE_28_io_Q;
  wire[7:0] NRegisterE_27_io_Q;
  wire[7:0] NRegisterE_26_io_Q;
  wire[7:0] NRegisterE_25_io_Q;
  wire[7:0] NRegisterE_24_io_Q;
  wire[7:0] NRegisterE_23_io_Q;
  wire[7:0] NRegisterE_22_io_Q;
  wire[7:0] NRegisterE_21_io_Q;
  wire[7:0] NRegisterE_20_io_Q;
  wire[7:0] NRegisterE_19_io_Q;
  wire[7:0] NRegisterE_18_io_Q;
  wire[7:0] NRegisterE_17_io_Q;
  wire[7:0] NRegisterE_16_io_Q;
  wire[7:0] NRegisterE_15_io_Q;
  wire[7:0] NRegisterE_14_io_Q;
  wire[7:0] NRegisterE_13_io_Q;
  wire[7:0] NRegisterE_12_io_Q;
  wire[7:0] NRegisterE_11_io_Q;
  wire[7:0] NRegisterE_10_io_Q;
  wire[7:0] NRegisterE_9_io_Q;
  wire[7:0] NRegisterE_8_io_Q;
  wire[7:0] NRegisterE_7_io_Q;
  wire[7:0] NRegisterE_6_io_Q;
  wire[7:0] NRegisterE_5_io_Q;
  wire[7:0] NRegisterE_4_io_Q;
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
  wire[7:0] NRegisterE_3_io_Q;
  wire[7:0] NRegisterE_2_io_Q;
  wire[7:0] NRegisterE_1_io_Q;
  wire[7:0] NRegisterE_0_io_Q;


<<<<<<< HEAD
=======
  assign io_Qbus_63 = NRegisterE_63_io_Q;
  assign io_Qbus_62 = NRegisterE_62_io_Q;
  assign io_Qbus_61 = NRegisterE_61_io_Q;
  assign io_Qbus_60 = NRegisterE_60_io_Q;
  assign io_Qbus_59 = NRegisterE_59_io_Q;
  assign io_Qbus_58 = NRegisterE_58_io_Q;
  assign io_Qbus_57 = NRegisterE_57_io_Q;
  assign io_Qbus_56 = NRegisterE_56_io_Q;
  assign io_Qbus_55 = NRegisterE_55_io_Q;
  assign io_Qbus_54 = NRegisterE_54_io_Q;
  assign io_Qbus_53 = NRegisterE_53_io_Q;
  assign io_Qbus_52 = NRegisterE_52_io_Q;
  assign io_Qbus_51 = NRegisterE_51_io_Q;
  assign io_Qbus_50 = NRegisterE_50_io_Q;
  assign io_Qbus_49 = NRegisterE_49_io_Q;
  assign io_Qbus_48 = NRegisterE_48_io_Q;
  assign io_Qbus_47 = NRegisterE_47_io_Q;
  assign io_Qbus_46 = NRegisterE_46_io_Q;
  assign io_Qbus_45 = NRegisterE_45_io_Q;
  assign io_Qbus_44 = NRegisterE_44_io_Q;
  assign io_Qbus_43 = NRegisterE_43_io_Q;
  assign io_Qbus_42 = NRegisterE_42_io_Q;
  assign io_Qbus_41 = NRegisterE_41_io_Q;
  assign io_Qbus_40 = NRegisterE_40_io_Q;
  assign io_Qbus_39 = NRegisterE_39_io_Q;
  assign io_Qbus_38 = NRegisterE_38_io_Q;
  assign io_Qbus_37 = NRegisterE_37_io_Q;
  assign io_Qbus_36 = NRegisterE_36_io_Q;
  assign io_Qbus_35 = NRegisterE_35_io_Q;
  assign io_Qbus_34 = NRegisterE_34_io_Q;
  assign io_Qbus_33 = NRegisterE_33_io_Q;
  assign io_Qbus_32 = NRegisterE_32_io_Q;
  assign io_Qbus_31 = NRegisterE_31_io_Q;
  assign io_Qbus_30 = NRegisterE_30_io_Q;
  assign io_Qbus_29 = NRegisterE_29_io_Q;
  assign io_Qbus_28 = NRegisterE_28_io_Q;
  assign io_Qbus_27 = NRegisterE_27_io_Q;
  assign io_Qbus_26 = NRegisterE_26_io_Q;
  assign io_Qbus_25 = NRegisterE_25_io_Q;
  assign io_Qbus_24 = NRegisterE_24_io_Q;
  assign io_Qbus_23 = NRegisterE_23_io_Q;
  assign io_Qbus_22 = NRegisterE_22_io_Q;
  assign io_Qbus_21 = NRegisterE_21_io_Q;
  assign io_Qbus_20 = NRegisterE_20_io_Q;
  assign io_Qbus_19 = NRegisterE_19_io_Q;
  assign io_Qbus_18 = NRegisterE_18_io_Q;
  assign io_Qbus_17 = NRegisterE_17_io_Q;
  assign io_Qbus_16 = NRegisterE_16_io_Q;
  assign io_Qbus_15 = NRegisterE_15_io_Q;
  assign io_Qbus_14 = NRegisterE_14_io_Q;
  assign io_Qbus_13 = NRegisterE_13_io_Q;
  assign io_Qbus_12 = NRegisterE_12_io_Q;
  assign io_Qbus_11 = NRegisterE_11_io_Q;
  assign io_Qbus_10 = NRegisterE_10_io_Q;
  assign io_Qbus_9 = NRegisterE_9_io_Q;
  assign io_Qbus_8 = NRegisterE_8_io_Q;
  assign io_Qbus_7 = NRegisterE_7_io_Q;
  assign io_Qbus_6 = NRegisterE_6_io_Q;
  assign io_Qbus_5 = NRegisterE_5_io_Q;
  assign io_Qbus_4 = NRegisterE_4_io_Q;
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
  assign io_Qbus_3 = NRegisterE_3_io_Q;
  assign io_Qbus_2 = NRegisterE_2_io_Q;
  assign io_Qbus_1 = NRegisterE_1_io_Q;
  assign io_Qbus_0 = NRegisterE_0_io_Q;
  NRegisterE NRegisterE_0(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_0_io_Q ),
       .io_enable( io_ENbus_0 )
  );
  NRegisterE NRegisterE_1(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_1_io_Q ),
       .io_enable( io_ENbus_1 )
  );
  NRegisterE NRegisterE_2(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_2_io_Q ),
       .io_enable( io_ENbus_2 )
  );
  NRegisterE NRegisterE_3(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_3_io_Q ),
       .io_enable( io_ENbus_3 )
<<<<<<< HEAD
=======
  );
  NRegisterE NRegisterE_4(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_4_io_Q ),
       .io_enable( io_ENbus_4 )
  );
  NRegisterE NRegisterE_5(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_5_io_Q ),
       .io_enable( io_ENbus_5 )
  );
  NRegisterE NRegisterE_6(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_6_io_Q ),
       .io_enable( io_ENbus_6 )
  );
  NRegisterE NRegisterE_7(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_7_io_Q ),
       .io_enable( io_ENbus_7 )
  );
  NRegisterE NRegisterE_8(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_8_io_Q ),
       .io_enable( io_ENbus_8 )
  );
  NRegisterE NRegisterE_9(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_9_io_Q ),
       .io_enable( io_ENbus_9 )
  );
  NRegisterE NRegisterE_10(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_10_io_Q ),
       .io_enable( io_ENbus_10 )
  );
  NRegisterE NRegisterE_11(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_11_io_Q ),
       .io_enable( io_ENbus_11 )
  );
  NRegisterE NRegisterE_12(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_12_io_Q ),
       .io_enable( io_ENbus_12 )
  );
  NRegisterE NRegisterE_13(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_13_io_Q ),
       .io_enable( io_ENbus_13 )
  );
  NRegisterE NRegisterE_14(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_14_io_Q ),
       .io_enable( io_ENbus_14 )
  );
  NRegisterE NRegisterE_15(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_15_io_Q ),
       .io_enable( io_ENbus_15 )
  );
  NRegisterE NRegisterE_16(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_16_io_Q ),
       .io_enable( io_ENbus_16 )
  );
  NRegisterE NRegisterE_17(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_17_io_Q ),
       .io_enable( io_ENbus_17 )
  );
  NRegisterE NRegisterE_18(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_18_io_Q ),
       .io_enable( io_ENbus_18 )
  );
  NRegisterE NRegisterE_19(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_19_io_Q ),
       .io_enable( io_ENbus_19 )
  );
  NRegisterE NRegisterE_20(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_20_io_Q ),
       .io_enable( io_ENbus_20 )
  );
  NRegisterE NRegisterE_21(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_21_io_Q ),
       .io_enable( io_ENbus_21 )
  );
  NRegisterE NRegisterE_22(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_22_io_Q ),
       .io_enable( io_ENbus_22 )
  );
  NRegisterE NRegisterE_23(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_23_io_Q ),
       .io_enable( io_ENbus_23 )
  );
  NRegisterE NRegisterE_24(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_24_io_Q ),
       .io_enable( io_ENbus_24 )
  );
  NRegisterE NRegisterE_25(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_25_io_Q ),
       .io_enable( io_ENbus_25 )
  );
  NRegisterE NRegisterE_26(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_26_io_Q ),
       .io_enable( io_ENbus_26 )
  );
  NRegisterE NRegisterE_27(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_27_io_Q ),
       .io_enable( io_ENbus_27 )
  );
  NRegisterE NRegisterE_28(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_28_io_Q ),
       .io_enable( io_ENbus_28 )
  );
  NRegisterE NRegisterE_29(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_29_io_Q ),
       .io_enable( io_ENbus_29 )
  );
  NRegisterE NRegisterE_30(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_30_io_Q ),
       .io_enable( io_ENbus_30 )
  );
  NRegisterE NRegisterE_31(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_31_io_Q ),
       .io_enable( io_ENbus_31 )
  );
  NRegisterE NRegisterE_32(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_32_io_Q ),
       .io_enable( io_ENbus_32 )
  );
  NRegisterE NRegisterE_33(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_33_io_Q ),
       .io_enable( io_ENbus_33 )
  );
  NRegisterE NRegisterE_34(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_34_io_Q ),
       .io_enable( io_ENbus_34 )
  );
  NRegisterE NRegisterE_35(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_35_io_Q ),
       .io_enable( io_ENbus_35 )
  );
  NRegisterE NRegisterE_36(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_36_io_Q ),
       .io_enable( io_ENbus_36 )
  );
  NRegisterE NRegisterE_37(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_37_io_Q ),
       .io_enable( io_ENbus_37 )
  );
  NRegisterE NRegisterE_38(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_38_io_Q ),
       .io_enable( io_ENbus_38 )
  );
  NRegisterE NRegisterE_39(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_39_io_Q ),
       .io_enable( io_ENbus_39 )
  );
  NRegisterE NRegisterE_40(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_40_io_Q ),
       .io_enable( io_ENbus_40 )
  );
  NRegisterE NRegisterE_41(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_41_io_Q ),
       .io_enable( io_ENbus_41 )
  );
  NRegisterE NRegisterE_42(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_42_io_Q ),
       .io_enable( io_ENbus_42 )
  );
  NRegisterE NRegisterE_43(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_43_io_Q ),
       .io_enable( io_ENbus_43 )
  );
  NRegisterE NRegisterE_44(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_44_io_Q ),
       .io_enable( io_ENbus_44 )
  );
  NRegisterE NRegisterE_45(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_45_io_Q ),
       .io_enable( io_ENbus_45 )
  );
  NRegisterE NRegisterE_46(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_46_io_Q ),
       .io_enable( io_ENbus_46 )
  );
  NRegisterE NRegisterE_47(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_47_io_Q ),
       .io_enable( io_ENbus_47 )
  );
  NRegisterE NRegisterE_48(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_48_io_Q ),
       .io_enable( io_ENbus_48 )
  );
  NRegisterE NRegisterE_49(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_49_io_Q ),
       .io_enable( io_ENbus_49 )
  );
  NRegisterE NRegisterE_50(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_50_io_Q ),
       .io_enable( io_ENbus_50 )
  );
  NRegisterE NRegisterE_51(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_51_io_Q ),
       .io_enable( io_ENbus_51 )
  );
  NRegisterE NRegisterE_52(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_52_io_Q ),
       .io_enable( io_ENbus_52 )
  );
  NRegisterE NRegisterE_53(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_53_io_Q ),
       .io_enable( io_ENbus_53 )
  );
  NRegisterE NRegisterE_54(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_54_io_Q ),
       .io_enable( io_ENbus_54 )
  );
  NRegisterE NRegisterE_55(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_55_io_Q ),
       .io_enable( io_ENbus_55 )
  );
  NRegisterE NRegisterE_56(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_56_io_Q ),
       .io_enable( io_ENbus_56 )
  );
  NRegisterE NRegisterE_57(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_57_io_Q ),
       .io_enable( io_ENbus_57 )
  );
  NRegisterE NRegisterE_58(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_58_io_Q ),
       .io_enable( io_ENbus_58 )
  );
  NRegisterE NRegisterE_59(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_59_io_Q ),
       .io_enable( io_ENbus_59 )
  );
  NRegisterE NRegisterE_60(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_60_io_Q ),
       .io_enable( io_ENbus_60 )
  );
  NRegisterE NRegisterE_61(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_61_io_Q ),
       .io_enable( io_ENbus_61 )
  );
  NRegisterE NRegisterE_62(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_62_io_Q ),
       .io_enable( io_ENbus_62 )
  );
  NRegisterE NRegisterE_63(.clk(clk), .reset(reset),
       .io_D( io_Dbus ),
       .io_Q( NRegisterE_63_io_Q ),
       .io_enable( io_ENbus_63 )
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
  );
endmodule

module NMux(
    input [7:0] io_Dvect_0,
    input [7:0] io_Dvect_1,
    input [7:0] io_Dvect_2,
    input [7:0] io_Dvect_3,
<<<<<<< HEAD
    output[7:0] io_Ovect,
    input [1:0] io_sel
=======
    input [7:0] io_Dvect_4,
    input [7:0] io_Dvect_5,
    input [7:0] io_Dvect_6,
    input [7:0] io_Dvect_7,
    input [7:0] io_Dvect_8,
    input [7:0] io_Dvect_9,
    input [7:0] io_Dvect_10,
    input [7:0] io_Dvect_11,
    input [7:0] io_Dvect_12,
    input [7:0] io_Dvect_13,
    input [7:0] io_Dvect_14,
    input [7:0] io_Dvect_15,
    input [7:0] io_Dvect_16,
    input [7:0] io_Dvect_17,
    input [7:0] io_Dvect_18,
    input [7:0] io_Dvect_19,
    input [7:0] io_Dvect_20,
    input [7:0] io_Dvect_21,
    input [7:0] io_Dvect_22,
    input [7:0] io_Dvect_23,
    input [7:0] io_Dvect_24,
    input [7:0] io_Dvect_25,
    input [7:0] io_Dvect_26,
    input [7:0] io_Dvect_27,
    input [7:0] io_Dvect_28,
    input [7:0] io_Dvect_29,
    input [7:0] io_Dvect_30,
    input [7:0] io_Dvect_31,
    input [7:0] io_Dvect_32,
    input [7:0] io_Dvect_33,
    input [7:0] io_Dvect_34,
    input [7:0] io_Dvect_35,
    input [7:0] io_Dvect_36,
    input [7:0] io_Dvect_37,
    input [7:0] io_Dvect_38,
    input [7:0] io_Dvect_39,
    input [7:0] io_Dvect_40,
    input [7:0] io_Dvect_41,
    input [7:0] io_Dvect_42,
    input [7:0] io_Dvect_43,
    input [7:0] io_Dvect_44,
    input [7:0] io_Dvect_45,
    input [7:0] io_Dvect_46,
    input [7:0] io_Dvect_47,
    input [7:0] io_Dvect_48,
    input [7:0] io_Dvect_49,
    input [7:0] io_Dvect_50,
    input [7:0] io_Dvect_51,
    input [7:0] io_Dvect_52,
    input [7:0] io_Dvect_53,
    input [7:0] io_Dvect_54,
    input [7:0] io_Dvect_55,
    input [7:0] io_Dvect_56,
    input [7:0] io_Dvect_57,
    input [7:0] io_Dvect_58,
    input [7:0] io_Dvect_59,
    input [7:0] io_Dvect_60,
    input [7:0] io_Dvect_61,
    input [7:0] io_Dvect_62,
    input [7:0] io_Dvect_63,
    output[7:0] io_Ovect,
    input [5:0] io_sel
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
);

  wire[7:0] T0;
  wire[7:0] T1;
<<<<<<< HEAD
  wire T2;
  wire[1:0] T3;
  wire[7:0] T4;
  wire T5;
  wire T6;


  assign io_Ovect = T0;
  assign T0 = T6 ? T4 : T1;
  assign T1 = T2 ? io_Dvect_1 : io_Dvect_0;
  assign T2 = T3[1'h0:1'h0];
  assign T3 = io_sel;
  assign T4 = T5 ? io_Dvect_3 : io_Dvect_2;
  assign T5 = T3[1'h0:1'h0];
  assign T6 = T3[1'h1:1'h1];
endmodule

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
=======
  wire[7:0] T2;
  wire[7:0] T3;
  wire[7:0] T4;
  wire[7:0] T5;
  wire T6;
  wire[5:0] T7;
  wire[7:0] T8;
  wire T9;
  wire T10;
  wire[7:0] T11;
  wire[7:0] T12;
  wire T13;
  wire[7:0] T14;
  wire T15;
  wire T16;
  wire T17;
  wire[7:0] T18;
  wire[7:0] T19;
  wire[7:0] T20;
  wire T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire[7:0] T25;
  wire[7:0] T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire[7:0] T33;
  wire[7:0] T34;
  wire[7:0] T35;
  wire[7:0] T36;
  wire T37;
  wire[7:0] T38;
  wire T39;
  wire T40;
  wire[7:0] T41;
  wire[7:0] T42;
  wire T43;
  wire[7:0] T44;
  wire T45;
  wire T46;
  wire T47;
  wire[7:0] T48;
  wire[7:0] T49;
  wire[7:0] T50;
  wire T51;
  wire[7:0] T52;
  wire T53;
  wire T54;
  wire[7:0] T55;
  wire[7:0] T56;
  wire T57;
  wire[7:0] T58;
  wire T59;
  wire T60;
  wire T61;
  wire T62;
  wire T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  wire[7:0] T68;
  wire T69;
  wire[7:0] T70;
  wire T71;
  wire T72;
  wire[7:0] T73;
  wire[7:0] T74;
  wire T75;
  wire[7:0] T76;
  wire T77;
  wire T78;
  wire T79;
  wire[7:0] T80;
  wire[7:0] T81;
  wire[7:0] T82;
  wire T83;
  wire[7:0] T84;
  wire T85;
  wire T86;
  wire[7:0] T87;
  wire[7:0] T88;
  wire T89;
  wire[7:0] T90;
  wire T91;
  wire T92;
  wire T93;
  wire T94;
  wire[7:0] T95;
  wire[7:0] T96;
  wire[7:0] T97;
  wire[7:0] T98;
  wire T99;
  wire[7:0] T100;
  wire T101;
  wire T102;
  wire[7:0] T103;
  wire[7:0] T104;
  wire T105;
  wire[7:0] T106;
  wire T107;
  wire T108;
  wire T109;
  wire[7:0] T110;
  wire[7:0] T111;
  wire[7:0] T112;
  wire T113;
  wire[7:0] T114;
  wire T115;
  wire T116;
  wire[7:0] T117;
  wire[7:0] T118;
  wire T119;
  wire[7:0] T120;
  wire T121;
  wire T122;
  wire T123;
  wire T124;
  wire T125;
  wire T126;


  assign io_Ovect = T0;
  assign T0 = T126 ? T64 : T1;
  assign T1 = T63 ? T33 : T2;
  assign T2 = T32 ? T18 : T3;
  assign T3 = T17 ? T11 : T4;
  assign T4 = T10 ? T8 : T5;
  assign T5 = T6 ? io_Dvect_1 : io_Dvect_0;
  assign T6 = T7[1'h0:1'h0];
  assign T7 = io_sel;
  assign T8 = T9 ? io_Dvect_3 : io_Dvect_2;
  assign T9 = T7[1'h0:1'h0];
  assign T10 = T7[1'h1:1'h1];
  assign T11 = T16 ? T14 : T12;
  assign T12 = T13 ? io_Dvect_5 : io_Dvect_4;
  assign T13 = T7[1'h0:1'h0];
  assign T14 = T15 ? io_Dvect_7 : io_Dvect_6;
  assign T15 = T7[1'h0:1'h0];
  assign T16 = T7[1'h1:1'h1];
  assign T17 = T7[2'h2:2'h2];
  assign T18 = T31 ? T25 : T19;
  assign T19 = T24 ? T22 : T20;
  assign T20 = T21 ? io_Dvect_9 : io_Dvect_8;
  assign T21 = T7[1'h0:1'h0];
  assign T22 = T23 ? io_Dvect_11 : io_Dvect_10;
  assign T23 = T7[1'h0:1'h0];
  assign T24 = T7[1'h1:1'h1];
  assign T25 = T30 ? T28 : T26;
  assign T26 = T27 ? io_Dvect_13 : io_Dvect_12;
  assign T27 = T7[1'h0:1'h0];
  assign T28 = T29 ? io_Dvect_15 : io_Dvect_14;
  assign T29 = T7[1'h0:1'h0];
  assign T30 = T7[1'h1:1'h1];
  assign T31 = T7[2'h2:2'h2];
  assign T32 = T7[2'h3:2'h3];
  assign T33 = T62 ? T48 : T34;
  assign T34 = T47 ? T41 : T35;
  assign T35 = T40 ? T38 : T36;
  assign T36 = T37 ? io_Dvect_17 : io_Dvect_16;
  assign T37 = T7[1'h0:1'h0];
  assign T38 = T39 ? io_Dvect_19 : io_Dvect_18;
  assign T39 = T7[1'h0:1'h0];
  assign T40 = T7[1'h1:1'h1];
  assign T41 = T46 ? T44 : T42;
  assign T42 = T43 ? io_Dvect_21 : io_Dvect_20;
  assign T43 = T7[1'h0:1'h0];
  assign T44 = T45 ? io_Dvect_23 : io_Dvect_22;
  assign T45 = T7[1'h0:1'h0];
  assign T46 = T7[1'h1:1'h1];
  assign T47 = T7[2'h2:2'h2];
  assign T48 = T61 ? T55 : T49;
  assign T49 = T54 ? T52 : T50;
  assign T50 = T51 ? io_Dvect_25 : io_Dvect_24;
  assign T51 = T7[1'h0:1'h0];
  assign T52 = T53 ? io_Dvect_27 : io_Dvect_26;
  assign T53 = T7[1'h0:1'h0];
  assign T54 = T7[1'h1:1'h1];
  assign T55 = T60 ? T58 : T56;
  assign T56 = T57 ? io_Dvect_29 : io_Dvect_28;
  assign T57 = T7[1'h0:1'h0];
  assign T58 = T59 ? io_Dvect_31 : io_Dvect_30;
  assign T59 = T7[1'h0:1'h0];
  assign T60 = T7[1'h1:1'h1];
  assign T61 = T7[2'h2:2'h2];
  assign T62 = T7[2'h3:2'h3];
  assign T63 = T7[3'h4:3'h4];
  assign T64 = T125 ? T95 : T65;
  assign T65 = T94 ? T80 : T66;
  assign T66 = T79 ? T73 : T67;
  assign T67 = T72 ? T70 : T68;
  assign T68 = T69 ? io_Dvect_33 : io_Dvect_32;
  assign T69 = T7[1'h0:1'h0];
  assign T70 = T71 ? io_Dvect_35 : io_Dvect_34;
  assign T71 = T7[1'h0:1'h0];
  assign T72 = T7[1'h1:1'h1];
  assign T73 = T78 ? T76 : T74;
  assign T74 = T75 ? io_Dvect_37 : io_Dvect_36;
  assign T75 = T7[1'h0:1'h0];
  assign T76 = T77 ? io_Dvect_39 : io_Dvect_38;
  assign T77 = T7[1'h0:1'h0];
  assign T78 = T7[1'h1:1'h1];
  assign T79 = T7[2'h2:2'h2];
  assign T80 = T93 ? T87 : T81;
  assign T81 = T86 ? T84 : T82;
  assign T82 = T83 ? io_Dvect_41 : io_Dvect_40;
  assign T83 = T7[1'h0:1'h0];
  assign T84 = T85 ? io_Dvect_43 : io_Dvect_42;
  assign T85 = T7[1'h0:1'h0];
  assign T86 = T7[1'h1:1'h1];
  assign T87 = T92 ? T90 : T88;
  assign T88 = T89 ? io_Dvect_45 : io_Dvect_44;
  assign T89 = T7[1'h0:1'h0];
  assign T90 = T91 ? io_Dvect_47 : io_Dvect_46;
  assign T91 = T7[1'h0:1'h0];
  assign T92 = T7[1'h1:1'h1];
  assign T93 = T7[2'h2:2'h2];
  assign T94 = T7[2'h3:2'h3];
  assign T95 = T124 ? T110 : T96;
  assign T96 = T109 ? T103 : T97;
  assign T97 = T102 ? T100 : T98;
  assign T98 = T99 ? io_Dvect_49 : io_Dvect_48;
  assign T99 = T7[1'h0:1'h0];
  assign T100 = T101 ? io_Dvect_51 : io_Dvect_50;
  assign T101 = T7[1'h0:1'h0];
  assign T102 = T7[1'h1:1'h1];
  assign T103 = T108 ? T106 : T104;
  assign T104 = T105 ? io_Dvect_53 : io_Dvect_52;
  assign T105 = T7[1'h0:1'h0];
  assign T106 = T107 ? io_Dvect_55 : io_Dvect_54;
  assign T107 = T7[1'h0:1'h0];
  assign T108 = T7[1'h1:1'h1];
  assign T109 = T7[2'h2:2'h2];
  assign T110 = T123 ? T117 : T111;
  assign T111 = T116 ? T114 : T112;
  assign T112 = T113 ? io_Dvect_57 : io_Dvect_56;
  assign T113 = T7[1'h0:1'h0];
  assign T114 = T115 ? io_Dvect_59 : io_Dvect_58;
  assign T115 = T7[1'h0:1'h0];
  assign T116 = T7[1'h1:1'h1];
  assign T117 = T122 ? T120 : T118;
  assign T118 = T119 ? io_Dvect_61 : io_Dvect_60;
  assign T119 = T7[1'h0:1'h0];
  assign T120 = T121 ? io_Dvect_63 : io_Dvect_62;
  assign T121 = T7[1'h0:1'h0];
  assign T122 = T7[1'h1:1'h1];
  assign T123 = T7[2'h2:2'h2];
  assign T124 = T7[2'h3:2'h3];
  assign T125 = T7[3'h4:3'h4];
  assign T126 = T7[3'h5:3'h5];
endmodule

module Decoder(
    input [5:0] io_WADD,
    output io_CTRL_0,
    output io_CTRL_1,
    output io_CTRL_2,
    output io_CTRL_3,
    output io_CTRL_4,
    output io_CTRL_5,
    output io_CTRL_6,
    output io_CTRL_7,
    output io_CTRL_8,
    output io_CTRL_9,
    output io_CTRL_10,
    output io_CTRL_11,
    output io_CTRL_12,
    output io_CTRL_13,
    output io_CTRL_14,
    output io_CTRL_15,
    output io_CTRL_16,
    output io_CTRL_17,
    output io_CTRL_18,
    output io_CTRL_19,
    output io_CTRL_20,
    output io_CTRL_21,
    output io_CTRL_22,
    output io_CTRL_23,
    output io_CTRL_24,
    output io_CTRL_25,
    output io_CTRL_26,
    output io_CTRL_27,
    output io_CTRL_28,
    output io_CTRL_29,
    output io_CTRL_30,
    output io_CTRL_31,
    output io_CTRL_32,
    output io_CTRL_33,
    output io_CTRL_34,
    output io_CTRL_35,
    output io_CTRL_36,
    output io_CTRL_37,
    output io_CTRL_38,
    output io_CTRL_39,
    output io_CTRL_40,
    output io_CTRL_41,
    output io_CTRL_42,
    output io_CTRL_43,
    output io_CTRL_44,
    output io_CTRL_45,
    output io_CTRL_46,
    output io_CTRL_47,
    output io_CTRL_48,
    output io_CTRL_49,
    output io_CTRL_50,
    output io_CTRL_51,
    output io_CTRL_52,
    output io_CTRL_53,
    output io_CTRL_54,
    output io_CTRL_55,
    output io_CTRL_56,
    output io_CTRL_57,
    output io_CTRL_58,
    output io_CTRL_59,
    output io_CTRL_60,
    output io_CTRL_61,
    output io_CTRL_62,
    output io_CTRL_63
);

  wire T0;
  wire[63:0] T1;
  wire[126:0] T2;
  wire[5:0] T3;
  wire T4;
  wire T5;
  wire T6;
  wire T7;
  wire T8;
  wire T9;
  wire T10;
  wire T11;
  wire T12;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire T17;
  wire T18;
  wire T19;
  wire T20;
  wire T21;
  wire T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire T47;
  wire T48;
  wire T49;
  wire T50;
  wire T51;
  wire T52;
  wire T53;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  wire T59;
  wire T60;
  wire T61;
  wire T62;
  wire T63;
  wire T64;
  wire T65;
  wire T66;


  assign io_CTRL_63 = T0;
  assign T0 = T1[6'h3f:6'h3f];
  assign T1 = T2[6'h3f:1'h0];
  assign T2 = 64'h1 << T3;
  assign T3 = io_WADD;
  assign io_CTRL_62 = T4;
  assign T4 = T1[6'h3e:6'h3e];
  assign io_CTRL_61 = T5;
  assign T5 = T1[6'h3d:6'h3d];
  assign io_CTRL_60 = T6;
  assign T6 = T1[6'h3c:6'h3c];
  assign io_CTRL_59 = T7;
  assign T7 = T1[6'h3b:6'h3b];
  assign io_CTRL_58 = T8;
  assign T8 = T1[6'h3a:6'h3a];
  assign io_CTRL_57 = T9;
  assign T9 = T1[6'h39:6'h39];
  assign io_CTRL_56 = T10;
  assign T10 = T1[6'h38:6'h38];
  assign io_CTRL_55 = T11;
  assign T11 = T1[6'h37:6'h37];
  assign io_CTRL_54 = T12;
  assign T12 = T1[6'h36:6'h36];
  assign io_CTRL_53 = T13;
  assign T13 = T1[6'h35:6'h35];
  assign io_CTRL_52 = T14;
  assign T14 = T1[6'h34:6'h34];
  assign io_CTRL_51 = T15;
  assign T15 = T1[6'h33:6'h33];
  assign io_CTRL_50 = T16;
  assign T16 = T1[6'h32:6'h32];
  assign io_CTRL_49 = T17;
  assign T17 = T1[6'h31:6'h31];
  assign io_CTRL_48 = T18;
  assign T18 = T1[6'h30:6'h30];
  assign io_CTRL_47 = T19;
  assign T19 = T1[6'h2f:6'h2f];
  assign io_CTRL_46 = T20;
  assign T20 = T1[6'h2e:6'h2e];
  assign io_CTRL_45 = T21;
  assign T21 = T1[6'h2d:6'h2d];
  assign io_CTRL_44 = T22;
  assign T22 = T1[6'h2c:6'h2c];
  assign io_CTRL_43 = T23;
  assign T23 = T1[6'h2b:6'h2b];
  assign io_CTRL_42 = T24;
  assign T24 = T1[6'h2a:6'h2a];
  assign io_CTRL_41 = T25;
  assign T25 = T1[6'h29:6'h29];
  assign io_CTRL_40 = T26;
  assign T26 = T1[6'h28:6'h28];
  assign io_CTRL_39 = T27;
  assign T27 = T1[6'h27:6'h27];
  assign io_CTRL_38 = T28;
  assign T28 = T1[6'h26:6'h26];
  assign io_CTRL_37 = T29;
  assign T29 = T1[6'h25:6'h25];
  assign io_CTRL_36 = T30;
  assign T30 = T1[6'h24:6'h24];
  assign io_CTRL_35 = T31;
  assign T31 = T1[6'h23:6'h23];
  assign io_CTRL_34 = T32;
  assign T32 = T1[6'h22:6'h22];
  assign io_CTRL_33 = T33;
  assign T33 = T1[6'h21:6'h21];
  assign io_CTRL_32 = T34;
  assign T34 = T1[6'h20:6'h20];
  assign io_CTRL_31 = T35;
  assign T35 = T1[5'h1f:5'h1f];
  assign io_CTRL_30 = T36;
  assign T36 = T1[5'h1e:5'h1e];
  assign io_CTRL_29 = T37;
  assign T37 = T1[5'h1d:5'h1d];
  assign io_CTRL_28 = T38;
  assign T38 = T1[5'h1c:5'h1c];
  assign io_CTRL_27 = T39;
  assign T39 = T1[5'h1b:5'h1b];
  assign io_CTRL_26 = T40;
  assign T40 = T1[5'h1a:5'h1a];
  assign io_CTRL_25 = T41;
  assign T41 = T1[5'h19:5'h19];
  assign io_CTRL_24 = T42;
  assign T42 = T1[5'h18:5'h18];
  assign io_CTRL_23 = T43;
  assign T43 = T1[5'h17:5'h17];
  assign io_CTRL_22 = T44;
  assign T44 = T1[5'h16:5'h16];
  assign io_CTRL_21 = T45;
  assign T45 = T1[5'h15:5'h15];
  assign io_CTRL_20 = T46;
  assign T46 = T1[5'h14:5'h14];
  assign io_CTRL_19 = T47;
  assign T47 = T1[5'h13:5'h13];
  assign io_CTRL_18 = T48;
  assign T48 = T1[5'h12:5'h12];
  assign io_CTRL_17 = T49;
  assign T49 = T1[5'h11:5'h11];
  assign io_CTRL_16 = T50;
  assign T50 = T1[5'h10:5'h10];
  assign io_CTRL_15 = T51;
  assign T51 = T1[4'hf:4'hf];
  assign io_CTRL_14 = T52;
  assign T52 = T1[4'he:4'he];
  assign io_CTRL_13 = T53;
  assign T53 = T1[4'hd:4'hd];
  assign io_CTRL_12 = T54;
  assign T54 = T1[4'hc:4'hc];
  assign io_CTRL_11 = T55;
  assign T55 = T1[4'hb:4'hb];
  assign io_CTRL_10 = T56;
  assign T56 = T1[4'ha:4'ha];
  assign io_CTRL_9 = T57;
  assign T57 = T1[4'h9:4'h9];
  assign io_CTRL_8 = T58;
  assign T58 = T1[4'h8:4'h8];
  assign io_CTRL_7 = T59;
  assign T59 = T1[3'h7:3'h7];
  assign io_CTRL_6 = T60;
  assign T60 = T1[3'h6:3'h6];
  assign io_CTRL_5 = T61;
  assign T61 = T1[3'h5:3'h5];
  assign io_CTRL_4 = T62;
  assign T62 = T1[3'h4:3'h4];
  assign io_CTRL_3 = T63;
  assign T63 = T1[2'h3:2'h3];
  assign io_CTRL_2 = T64;
  assign T64 = T1[2'h2:2'h2];
  assign io_CTRL_1 = T65;
  assign T65 = T1[1'h1:1'h1];
  assign io_CTRL_0 = T66;
  assign T66 = T1[1'h0:1'h0];
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
endmodule

module NRAMMUX(input clk, input reset,
    input [7:0] io_D,
    output[7:0] io_Q,
<<<<<<< HEAD
    input [1:0] io_RADD,
    input [1:0] io_WADD
);

=======
    input [5:0] io_RADD,
    input [5:0] io_WADD
);

  wire[7:0] RAM_io_Qbus_63;
  wire[7:0] RAM_io_Qbus_62;
  wire[7:0] RAM_io_Qbus_61;
  wire[7:0] RAM_io_Qbus_60;
  wire[7:0] RAM_io_Qbus_59;
  wire[7:0] RAM_io_Qbus_58;
  wire[7:0] RAM_io_Qbus_57;
  wire[7:0] RAM_io_Qbus_56;
  wire[7:0] RAM_io_Qbus_55;
  wire[7:0] RAM_io_Qbus_54;
  wire[7:0] RAM_io_Qbus_53;
  wire[7:0] RAM_io_Qbus_52;
  wire[7:0] RAM_io_Qbus_51;
  wire[7:0] RAM_io_Qbus_50;
  wire[7:0] RAM_io_Qbus_49;
  wire[7:0] RAM_io_Qbus_48;
  wire[7:0] RAM_io_Qbus_47;
  wire[7:0] RAM_io_Qbus_46;
  wire[7:0] RAM_io_Qbus_45;
  wire[7:0] RAM_io_Qbus_44;
  wire[7:0] RAM_io_Qbus_43;
  wire[7:0] RAM_io_Qbus_42;
  wire[7:0] RAM_io_Qbus_41;
  wire[7:0] RAM_io_Qbus_40;
  wire[7:0] RAM_io_Qbus_39;
  wire[7:0] RAM_io_Qbus_38;
  wire[7:0] RAM_io_Qbus_37;
  wire[7:0] RAM_io_Qbus_36;
  wire[7:0] RAM_io_Qbus_35;
  wire[7:0] RAM_io_Qbus_34;
  wire[7:0] RAM_io_Qbus_33;
  wire[7:0] RAM_io_Qbus_32;
  wire[7:0] RAM_io_Qbus_31;
  wire[7:0] RAM_io_Qbus_30;
  wire[7:0] RAM_io_Qbus_29;
  wire[7:0] RAM_io_Qbus_28;
  wire[7:0] RAM_io_Qbus_27;
  wire[7:0] RAM_io_Qbus_26;
  wire[7:0] RAM_io_Qbus_25;
  wire[7:0] RAM_io_Qbus_24;
  wire[7:0] RAM_io_Qbus_23;
  wire[7:0] RAM_io_Qbus_22;
  wire[7:0] RAM_io_Qbus_21;
  wire[7:0] RAM_io_Qbus_20;
  wire[7:0] RAM_io_Qbus_19;
  wire[7:0] RAM_io_Qbus_18;
  wire[7:0] RAM_io_Qbus_17;
  wire[7:0] RAM_io_Qbus_16;
  wire[7:0] RAM_io_Qbus_15;
  wire[7:0] RAM_io_Qbus_14;
  wire[7:0] RAM_io_Qbus_13;
  wire[7:0] RAM_io_Qbus_12;
  wire[7:0] RAM_io_Qbus_11;
  wire[7:0] RAM_io_Qbus_10;
  wire[7:0] RAM_io_Qbus_9;
  wire[7:0] RAM_io_Qbus_8;
  wire[7:0] RAM_io_Qbus_7;
  wire[7:0] RAM_io_Qbus_6;
  wire[7:0] RAM_io_Qbus_5;
  wire[7:0] RAM_io_Qbus_4;
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
  wire[7:0] RAM_io_Qbus_3;
  wire[7:0] RAM_io_Qbus_2;
  wire[7:0] RAM_io_Qbus_1;
  wire[7:0] RAM_io_Qbus_0;
<<<<<<< HEAD
=======
  wire DECODER_io_CTRL_63;
  wire DECODER_io_CTRL_62;
  wire DECODER_io_CTRL_61;
  wire DECODER_io_CTRL_60;
  wire DECODER_io_CTRL_59;
  wire DECODER_io_CTRL_58;
  wire DECODER_io_CTRL_57;
  wire DECODER_io_CTRL_56;
  wire DECODER_io_CTRL_55;
  wire DECODER_io_CTRL_54;
  wire DECODER_io_CTRL_53;
  wire DECODER_io_CTRL_52;
  wire DECODER_io_CTRL_51;
  wire DECODER_io_CTRL_50;
  wire DECODER_io_CTRL_49;
  wire DECODER_io_CTRL_48;
  wire DECODER_io_CTRL_47;
  wire DECODER_io_CTRL_46;
  wire DECODER_io_CTRL_45;
  wire DECODER_io_CTRL_44;
  wire DECODER_io_CTRL_43;
  wire DECODER_io_CTRL_42;
  wire DECODER_io_CTRL_41;
  wire DECODER_io_CTRL_40;
  wire DECODER_io_CTRL_39;
  wire DECODER_io_CTRL_38;
  wire DECODER_io_CTRL_37;
  wire DECODER_io_CTRL_36;
  wire DECODER_io_CTRL_35;
  wire DECODER_io_CTRL_34;
  wire DECODER_io_CTRL_33;
  wire DECODER_io_CTRL_32;
  wire DECODER_io_CTRL_31;
  wire DECODER_io_CTRL_30;
  wire DECODER_io_CTRL_29;
  wire DECODER_io_CTRL_28;
  wire DECODER_io_CTRL_27;
  wire DECODER_io_CTRL_26;
  wire DECODER_io_CTRL_25;
  wire DECODER_io_CTRL_24;
  wire DECODER_io_CTRL_23;
  wire DECODER_io_CTRL_22;
  wire DECODER_io_CTRL_21;
  wire DECODER_io_CTRL_20;
  wire DECODER_io_CTRL_19;
  wire DECODER_io_CTRL_18;
  wire DECODER_io_CTRL_17;
  wire DECODER_io_CTRL_16;
  wire DECODER_io_CTRL_15;
  wire DECODER_io_CTRL_14;
  wire DECODER_io_CTRL_13;
  wire DECODER_io_CTRL_12;
  wire DECODER_io_CTRL_11;
  wire DECODER_io_CTRL_10;
  wire DECODER_io_CTRL_9;
  wire DECODER_io_CTRL_8;
  wire DECODER_io_CTRL_7;
  wire DECODER_io_CTRL_6;
  wire DECODER_io_CTRL_5;
  wire DECODER_io_CTRL_4;
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
  wire DECODER_io_CTRL_3;
  wire DECODER_io_CTRL_2;
  wire DECODER_io_CTRL_1;
  wire DECODER_io_CTRL_0;
  wire[7:0] MUX1_io_Ovect;


  assign io_Q = MUX1_io_Ovect;
  NRAM RAM(.clk(clk), .reset(reset),
       .io_Dbus( io_D ),
       .io_Qbus_0( RAM_io_Qbus_0 ),
       .io_Qbus_1( RAM_io_Qbus_1 ),
       .io_Qbus_2( RAM_io_Qbus_2 ),
       .io_Qbus_3( RAM_io_Qbus_3 ),
<<<<<<< HEAD
       .io_ENbus_0( DECODER_io_CTRL_0 ),
       .io_ENbus_1( DECODER_io_CTRL_1 ),
       .io_ENbus_2( DECODER_io_CTRL_2 ),
       .io_ENbus_3( DECODER_io_CTRL_3 )
=======
       .io_Qbus_4( RAM_io_Qbus_4 ),
       .io_Qbus_5( RAM_io_Qbus_5 ),
       .io_Qbus_6( RAM_io_Qbus_6 ),
       .io_Qbus_7( RAM_io_Qbus_7 ),
       .io_Qbus_8( RAM_io_Qbus_8 ),
       .io_Qbus_9( RAM_io_Qbus_9 ),
       .io_Qbus_10( RAM_io_Qbus_10 ),
       .io_Qbus_11( RAM_io_Qbus_11 ),
       .io_Qbus_12( RAM_io_Qbus_12 ),
       .io_Qbus_13( RAM_io_Qbus_13 ),
       .io_Qbus_14( RAM_io_Qbus_14 ),
       .io_Qbus_15( RAM_io_Qbus_15 ),
       .io_Qbus_16( RAM_io_Qbus_16 ),
       .io_Qbus_17( RAM_io_Qbus_17 ),
       .io_Qbus_18( RAM_io_Qbus_18 ),
       .io_Qbus_19( RAM_io_Qbus_19 ),
       .io_Qbus_20( RAM_io_Qbus_20 ),
       .io_Qbus_21( RAM_io_Qbus_21 ),
       .io_Qbus_22( RAM_io_Qbus_22 ),
       .io_Qbus_23( RAM_io_Qbus_23 ),
       .io_Qbus_24( RAM_io_Qbus_24 ),
       .io_Qbus_25( RAM_io_Qbus_25 ),
       .io_Qbus_26( RAM_io_Qbus_26 ),
       .io_Qbus_27( RAM_io_Qbus_27 ),
       .io_Qbus_28( RAM_io_Qbus_28 ),
       .io_Qbus_29( RAM_io_Qbus_29 ),
       .io_Qbus_30( RAM_io_Qbus_30 ),
       .io_Qbus_31( RAM_io_Qbus_31 ),
       .io_Qbus_32( RAM_io_Qbus_32 ),
       .io_Qbus_33( RAM_io_Qbus_33 ),
       .io_Qbus_34( RAM_io_Qbus_34 ),
       .io_Qbus_35( RAM_io_Qbus_35 ),
       .io_Qbus_36( RAM_io_Qbus_36 ),
       .io_Qbus_37( RAM_io_Qbus_37 ),
       .io_Qbus_38( RAM_io_Qbus_38 ),
       .io_Qbus_39( RAM_io_Qbus_39 ),
       .io_Qbus_40( RAM_io_Qbus_40 ),
       .io_Qbus_41( RAM_io_Qbus_41 ),
       .io_Qbus_42( RAM_io_Qbus_42 ),
       .io_Qbus_43( RAM_io_Qbus_43 ),
       .io_Qbus_44( RAM_io_Qbus_44 ),
       .io_Qbus_45( RAM_io_Qbus_45 ),
       .io_Qbus_46( RAM_io_Qbus_46 ),
       .io_Qbus_47( RAM_io_Qbus_47 ),
       .io_Qbus_48( RAM_io_Qbus_48 ),
       .io_Qbus_49( RAM_io_Qbus_49 ),
       .io_Qbus_50( RAM_io_Qbus_50 ),
       .io_Qbus_51( RAM_io_Qbus_51 ),
       .io_Qbus_52( RAM_io_Qbus_52 ),
       .io_Qbus_53( RAM_io_Qbus_53 ),
       .io_Qbus_54( RAM_io_Qbus_54 ),
       .io_Qbus_55( RAM_io_Qbus_55 ),
       .io_Qbus_56( RAM_io_Qbus_56 ),
       .io_Qbus_57( RAM_io_Qbus_57 ),
       .io_Qbus_58( RAM_io_Qbus_58 ),
       .io_Qbus_59( RAM_io_Qbus_59 ),
       .io_Qbus_60( RAM_io_Qbus_60 ),
       .io_Qbus_61( RAM_io_Qbus_61 ),
       .io_Qbus_62( RAM_io_Qbus_62 ),
       .io_Qbus_63( RAM_io_Qbus_63 ),
       .io_ENbus_0( DECODER_io_CTRL_0 ),
       .io_ENbus_1( DECODER_io_CTRL_1 ),
       .io_ENbus_2( DECODER_io_CTRL_2 ),
       .io_ENbus_3( DECODER_io_CTRL_3 ),
       .io_ENbus_4( DECODER_io_CTRL_4 ),
       .io_ENbus_5( DECODER_io_CTRL_5 ),
       .io_ENbus_6( DECODER_io_CTRL_6 ),
       .io_ENbus_7( DECODER_io_CTRL_7 ),
       .io_ENbus_8( DECODER_io_CTRL_8 ),
       .io_ENbus_9( DECODER_io_CTRL_9 ),
       .io_ENbus_10( DECODER_io_CTRL_10 ),
       .io_ENbus_11( DECODER_io_CTRL_11 ),
       .io_ENbus_12( DECODER_io_CTRL_12 ),
       .io_ENbus_13( DECODER_io_CTRL_13 ),
       .io_ENbus_14( DECODER_io_CTRL_14 ),
       .io_ENbus_15( DECODER_io_CTRL_15 ),
       .io_ENbus_16( DECODER_io_CTRL_16 ),
       .io_ENbus_17( DECODER_io_CTRL_17 ),
       .io_ENbus_18( DECODER_io_CTRL_18 ),
       .io_ENbus_19( DECODER_io_CTRL_19 ),
       .io_ENbus_20( DECODER_io_CTRL_20 ),
       .io_ENbus_21( DECODER_io_CTRL_21 ),
       .io_ENbus_22( DECODER_io_CTRL_22 ),
       .io_ENbus_23( DECODER_io_CTRL_23 ),
       .io_ENbus_24( DECODER_io_CTRL_24 ),
       .io_ENbus_25( DECODER_io_CTRL_25 ),
       .io_ENbus_26( DECODER_io_CTRL_26 ),
       .io_ENbus_27( DECODER_io_CTRL_27 ),
       .io_ENbus_28( DECODER_io_CTRL_28 ),
       .io_ENbus_29( DECODER_io_CTRL_29 ),
       .io_ENbus_30( DECODER_io_CTRL_30 ),
       .io_ENbus_31( DECODER_io_CTRL_31 ),
       .io_ENbus_32( DECODER_io_CTRL_32 ),
       .io_ENbus_33( DECODER_io_CTRL_33 ),
       .io_ENbus_34( DECODER_io_CTRL_34 ),
       .io_ENbus_35( DECODER_io_CTRL_35 ),
       .io_ENbus_36( DECODER_io_CTRL_36 ),
       .io_ENbus_37( DECODER_io_CTRL_37 ),
       .io_ENbus_38( DECODER_io_CTRL_38 ),
       .io_ENbus_39( DECODER_io_CTRL_39 ),
       .io_ENbus_40( DECODER_io_CTRL_40 ),
       .io_ENbus_41( DECODER_io_CTRL_41 ),
       .io_ENbus_42( DECODER_io_CTRL_42 ),
       .io_ENbus_43( DECODER_io_CTRL_43 ),
       .io_ENbus_44( DECODER_io_CTRL_44 ),
       .io_ENbus_45( DECODER_io_CTRL_45 ),
       .io_ENbus_46( DECODER_io_CTRL_46 ),
       .io_ENbus_47( DECODER_io_CTRL_47 ),
       .io_ENbus_48( DECODER_io_CTRL_48 ),
       .io_ENbus_49( DECODER_io_CTRL_49 ),
       .io_ENbus_50( DECODER_io_CTRL_50 ),
       .io_ENbus_51( DECODER_io_CTRL_51 ),
       .io_ENbus_52( DECODER_io_CTRL_52 ),
       .io_ENbus_53( DECODER_io_CTRL_53 ),
       .io_ENbus_54( DECODER_io_CTRL_54 ),
       .io_ENbus_55( DECODER_io_CTRL_55 ),
       .io_ENbus_56( DECODER_io_CTRL_56 ),
       .io_ENbus_57( DECODER_io_CTRL_57 ),
       .io_ENbus_58( DECODER_io_CTRL_58 ),
       .io_ENbus_59( DECODER_io_CTRL_59 ),
       .io_ENbus_60( DECODER_io_CTRL_60 ),
       .io_ENbus_61( DECODER_io_CTRL_61 ),
       .io_ENbus_62( DECODER_io_CTRL_62 ),
       .io_ENbus_63( DECODER_io_CTRL_63 )
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
  );
  NMux MUX1(
       .io_Dvect_0( RAM_io_Qbus_0 ),
       .io_Dvect_1( RAM_io_Qbus_1 ),
       .io_Dvect_2( RAM_io_Qbus_2 ),
       .io_Dvect_3( RAM_io_Qbus_3 ),
<<<<<<< HEAD
=======
       .io_Dvect_4( RAM_io_Qbus_4 ),
       .io_Dvect_5( RAM_io_Qbus_5 ),
       .io_Dvect_6( RAM_io_Qbus_6 ),
       .io_Dvect_7( RAM_io_Qbus_7 ),
       .io_Dvect_8( RAM_io_Qbus_8 ),
       .io_Dvect_9( RAM_io_Qbus_9 ),
       .io_Dvect_10( RAM_io_Qbus_10 ),
       .io_Dvect_11( RAM_io_Qbus_11 ),
       .io_Dvect_12( RAM_io_Qbus_12 ),
       .io_Dvect_13( RAM_io_Qbus_13 ),
       .io_Dvect_14( RAM_io_Qbus_14 ),
       .io_Dvect_15( RAM_io_Qbus_15 ),
       .io_Dvect_16( RAM_io_Qbus_16 ),
       .io_Dvect_17( RAM_io_Qbus_17 ),
       .io_Dvect_18( RAM_io_Qbus_18 ),
       .io_Dvect_19( RAM_io_Qbus_19 ),
       .io_Dvect_20( RAM_io_Qbus_20 ),
       .io_Dvect_21( RAM_io_Qbus_21 ),
       .io_Dvect_22( RAM_io_Qbus_22 ),
       .io_Dvect_23( RAM_io_Qbus_23 ),
       .io_Dvect_24( RAM_io_Qbus_24 ),
       .io_Dvect_25( RAM_io_Qbus_25 ),
       .io_Dvect_26( RAM_io_Qbus_26 ),
       .io_Dvect_27( RAM_io_Qbus_27 ),
       .io_Dvect_28( RAM_io_Qbus_28 ),
       .io_Dvect_29( RAM_io_Qbus_29 ),
       .io_Dvect_30( RAM_io_Qbus_30 ),
       .io_Dvect_31( RAM_io_Qbus_31 ),
       .io_Dvect_32( RAM_io_Qbus_32 ),
       .io_Dvect_33( RAM_io_Qbus_33 ),
       .io_Dvect_34( RAM_io_Qbus_34 ),
       .io_Dvect_35( RAM_io_Qbus_35 ),
       .io_Dvect_36( RAM_io_Qbus_36 ),
       .io_Dvect_37( RAM_io_Qbus_37 ),
       .io_Dvect_38( RAM_io_Qbus_38 ),
       .io_Dvect_39( RAM_io_Qbus_39 ),
       .io_Dvect_40( RAM_io_Qbus_40 ),
       .io_Dvect_41( RAM_io_Qbus_41 ),
       .io_Dvect_42( RAM_io_Qbus_42 ),
       .io_Dvect_43( RAM_io_Qbus_43 ),
       .io_Dvect_44( RAM_io_Qbus_44 ),
       .io_Dvect_45( RAM_io_Qbus_45 ),
       .io_Dvect_46( RAM_io_Qbus_46 ),
       .io_Dvect_47( RAM_io_Qbus_47 ),
       .io_Dvect_48( RAM_io_Qbus_48 ),
       .io_Dvect_49( RAM_io_Qbus_49 ),
       .io_Dvect_50( RAM_io_Qbus_50 ),
       .io_Dvect_51( RAM_io_Qbus_51 ),
       .io_Dvect_52( RAM_io_Qbus_52 ),
       .io_Dvect_53( RAM_io_Qbus_53 ),
       .io_Dvect_54( RAM_io_Qbus_54 ),
       .io_Dvect_55( RAM_io_Qbus_55 ),
       .io_Dvect_56( RAM_io_Qbus_56 ),
       .io_Dvect_57( RAM_io_Qbus_57 ),
       .io_Dvect_58( RAM_io_Qbus_58 ),
       .io_Dvect_59( RAM_io_Qbus_59 ),
       .io_Dvect_60( RAM_io_Qbus_60 ),
       .io_Dvect_61( RAM_io_Qbus_61 ),
       .io_Dvect_62( RAM_io_Qbus_62 ),
       .io_Dvect_63( RAM_io_Qbus_63 ),
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
       .io_Ovect( MUX1_io_Ovect ),
       .io_sel( io_RADD )
  );
  Decoder DECODER(
       .io_WADD( io_WADD ),
       .io_CTRL_0( DECODER_io_CTRL_0 ),
       .io_CTRL_1( DECODER_io_CTRL_1 ),
       .io_CTRL_2( DECODER_io_CTRL_2 ),
<<<<<<< HEAD
       .io_CTRL_3( DECODER_io_CTRL_3 )
=======
       .io_CTRL_3( DECODER_io_CTRL_3 ),
       .io_CTRL_4( DECODER_io_CTRL_4 ),
       .io_CTRL_5( DECODER_io_CTRL_5 ),
       .io_CTRL_6( DECODER_io_CTRL_6 ),
       .io_CTRL_7( DECODER_io_CTRL_7 ),
       .io_CTRL_8( DECODER_io_CTRL_8 ),
       .io_CTRL_9( DECODER_io_CTRL_9 ),
       .io_CTRL_10( DECODER_io_CTRL_10 ),
       .io_CTRL_11( DECODER_io_CTRL_11 ),
       .io_CTRL_12( DECODER_io_CTRL_12 ),
       .io_CTRL_13( DECODER_io_CTRL_13 ),
       .io_CTRL_14( DECODER_io_CTRL_14 ),
       .io_CTRL_15( DECODER_io_CTRL_15 ),
       .io_CTRL_16( DECODER_io_CTRL_16 ),
       .io_CTRL_17( DECODER_io_CTRL_17 ),
       .io_CTRL_18( DECODER_io_CTRL_18 ),
       .io_CTRL_19( DECODER_io_CTRL_19 ),
       .io_CTRL_20( DECODER_io_CTRL_20 ),
       .io_CTRL_21( DECODER_io_CTRL_21 ),
       .io_CTRL_22( DECODER_io_CTRL_22 ),
       .io_CTRL_23( DECODER_io_CTRL_23 ),
       .io_CTRL_24( DECODER_io_CTRL_24 ),
       .io_CTRL_25( DECODER_io_CTRL_25 ),
       .io_CTRL_26( DECODER_io_CTRL_26 ),
       .io_CTRL_27( DECODER_io_CTRL_27 ),
       .io_CTRL_28( DECODER_io_CTRL_28 ),
       .io_CTRL_29( DECODER_io_CTRL_29 ),
       .io_CTRL_30( DECODER_io_CTRL_30 ),
       .io_CTRL_31( DECODER_io_CTRL_31 ),
       .io_CTRL_32( DECODER_io_CTRL_32 ),
       .io_CTRL_33( DECODER_io_CTRL_33 ),
       .io_CTRL_34( DECODER_io_CTRL_34 ),
       .io_CTRL_35( DECODER_io_CTRL_35 ),
       .io_CTRL_36( DECODER_io_CTRL_36 ),
       .io_CTRL_37( DECODER_io_CTRL_37 ),
       .io_CTRL_38( DECODER_io_CTRL_38 ),
       .io_CTRL_39( DECODER_io_CTRL_39 ),
       .io_CTRL_40( DECODER_io_CTRL_40 ),
       .io_CTRL_41( DECODER_io_CTRL_41 ),
       .io_CTRL_42( DECODER_io_CTRL_42 ),
       .io_CTRL_43( DECODER_io_CTRL_43 ),
       .io_CTRL_44( DECODER_io_CTRL_44 ),
       .io_CTRL_45( DECODER_io_CTRL_45 ),
       .io_CTRL_46( DECODER_io_CTRL_46 ),
       .io_CTRL_47( DECODER_io_CTRL_47 ),
       .io_CTRL_48( DECODER_io_CTRL_48 ),
       .io_CTRL_49( DECODER_io_CTRL_49 ),
       .io_CTRL_50( DECODER_io_CTRL_50 ),
       .io_CTRL_51( DECODER_io_CTRL_51 ),
       .io_CTRL_52( DECODER_io_CTRL_52 ),
       .io_CTRL_53( DECODER_io_CTRL_53 ),
       .io_CTRL_54( DECODER_io_CTRL_54 ),
       .io_CTRL_55( DECODER_io_CTRL_55 ),
       .io_CTRL_56( DECODER_io_CTRL_56 ),
       .io_CTRL_57( DECODER_io_CTRL_57 ),
       .io_CTRL_58( DECODER_io_CTRL_58 ),
       .io_CTRL_59( DECODER_io_CTRL_59 ),
       .io_CTRL_60( DECODER_io_CTRL_60 ),
       .io_CTRL_61( DECODER_io_CTRL_61 ),
       .io_CTRL_62( DECODER_io_CTRL_62 ),
       .io_CTRL_63( DECODER_io_CTRL_63 )
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
  );
endmodule

