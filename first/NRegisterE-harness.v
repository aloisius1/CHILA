module test;
  reg [7:0] io_D;
  reg [0:0] io_enable;
  wire [7:0] io_Q;
  reg reset = 1;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    NRegisterE
      NRegisterE(
        .clk(clk),
        .reset(reset),
        .io_D(io_D),
        .io_enable(io_enable),
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
