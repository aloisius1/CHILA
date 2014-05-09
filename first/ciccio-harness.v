module test;
  reg [0:0] io_sel;
  reg [0:0] io_in0;
  reg [0:0] io_in1;
  wire [0:0] io_out;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    ciccio
      ciccio(
        .io_sel(io_sel),
        .io_in0(io_in0),
        .io_in1(io_in1),
        .io_out(io_out)
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
