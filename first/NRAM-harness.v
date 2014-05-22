module test;
  reg [7:0] io_Dbus;
  reg [1:0] io_ENbus;
  wire [7:0] io_Qbus_0;
  wire [7:0] io_Qbus_1;
  reg reset = 1;
  reg clk = 0;
  parameter clk_length = 120;
  always #clk_length clk = ~clk;
  /*** DUT instantiation ***/
    NRAM
      NRAM(
        .clk(clk),
        .reset(reset),
        .io_Dbus(io_Dbus),
        .io_ENbus(io_ENbus),
        .io_Qbus_0(io_Qbus_0),
        .io_Qbus_1(io_Qbus_1)
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
