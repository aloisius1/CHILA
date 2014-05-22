module test;
  reg [7:0] io_Dvect_0;
  reg [7:0] io_Dvect_1;
  reg [7:0] io_Dvect_2;
  reg [7:0] io_Dvect_3;
  reg [7:0] io_Dvect_4;
  wire [7:0] io_Ovect;
  wire [2:0] io_sel;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    NMux
      NMux(
        .io_Dvect_0(io_Dvect_0),
        .io_Dvect_1(io_Dvect_1),
        .io_Dvect_2(io_Dvect_2),
        .io_Dvect_3(io_Dvect_3),
        .io_Dvect_4(io_Dvect_4),
        .io_Ovect(io_Ovect),
        .io_sel(io_sel)
 );

  /*** resets &&  VCD / VPD dumps ***/
  initial begin
  #250;
  end

  /*** ROM & Mem initialization ***/
  integer i = 0;
  initial begin
  #50;
  end

endmodule
