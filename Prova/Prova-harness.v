module test;
  wire [7:0] io_out;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    Prova
      Prova(
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
