module test;
  reg [7:0] io_D;
  wire [7:0] io_Q;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    NReg
      NReg(
        .clk(clk),
        .io_D(io_D),
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
