module test;
  reg [7:0] io_D;
<<<<<<< HEAD
  reg [1:0] io_RADD;
  reg [1:0] io_WADD;
=======
  reg [5:0] io_RADD;
  reg [5:0] io_WADD;
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
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
        .io_WADD(io_WADD),
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
