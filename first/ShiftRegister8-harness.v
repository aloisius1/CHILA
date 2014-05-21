module test;
  reg [7:0] io_in;
  reg [0:0] io_enable;
  wire [7:0] io_out;
  reg reset = 1;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    ShiftRegister8
      ShiftRegister8(
        .clk(clk),
        .reset(reset),
        .io_in(io_in),
        .io_enable(io_enable),
        .io_out(io_out)
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
