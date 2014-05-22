module NMux(
    input [7:0] io_Dvect_0,
    input [7:0] io_Dvect_1,
    input [7:0] io_Dvect_2,
    input [7:0] io_Dvect_3,
    input [7:0] io_Dvect_4,
    output[7:0] io_Ovect,
    output[2:0] io_sel
);

  wire[7:0] T0;
  wire[7:0] T1;
  wire[7:0] T2;
  wire T3;
  wire[2:0] T4;
  wire[7:0] T5;
  wire T6;
  wire T7;
  wire T8;


  assign io_Ovect = T0;
  assign T0 = T8 ? io_Dvect_4 : T1;
  assign T1 = T7 ? T5 : T2;
  assign T2 = T3 ? io_Dvect_1 : io_Dvect_0;
  assign T3 = T4[1'h0:1'h0];
  assign T4 = io_sel;
  assign T5 = T6 ? io_Dvect_3 : io_Dvect_2;
  assign T6 = T4[1'h0:1'h0];
  assign T7 = T4[1'h1:1'h1];
  assign T8 = T4[2'h2:2'h2];
endmodule

