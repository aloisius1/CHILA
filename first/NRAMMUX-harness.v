module test;
  reg [7:0] io_D;
  reg [0:0] io_RADD;
  wire [7:0] io_Q;
  reg reset = 1;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    NRAMMUX
      NRAMMUX(
        .clk(clk),
        .reset(reset),
        .io_D(io_D),
        .io_RADD(io_RADD),
        .io_Q(io_Q)
 );

  /*** resets &&  VCD / VPD dumps ***/
  initial begin
  reset = 1;
  #250;
  reset = 0;
  end

  /*** ROM & Mem initialization ***/
  integer i = 0;
  initial begin
  #50;
  end

endmodule
