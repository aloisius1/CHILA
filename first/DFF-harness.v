module test;
  reg [0:0] io_D;
  reg [0:0] io_EN;
  wire [0:0] io_Q;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    DFF
      DFF(
        .clk(clk),
        .io_D(io_D),
        .io_EN(io_EN),
        .io_Q(io_Q)
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
