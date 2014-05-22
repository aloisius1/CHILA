module test;
  reg [1:0] io_WADD;
  wire [0:0] io_CTRL_0;
  wire [0:0] io_CTRL_1;
  wire [0:0] io_CTRL_2;
  wire [0:0] io_CTRL_3;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    Decoder
      Decoder(
        .io_WADD(io_WADD),
        .io_CTRL_0(io_CTRL_0),
        .io_CTRL_1(io_CTRL_1),
        .io_CTRL_2(io_CTRL_2),
        .io_CTRL_3(io_CTRL_3)
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
