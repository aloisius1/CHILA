module Mod1(input clk,
    input  io_in01,
    output io_out01
);

  reg  registro00;

`ifndef SYNTHESIS
  integer initvar;
  initial begin
    #0.002;
    registro00 = {1{$random}};
  end
`endif

  assign io_out01 = registro00;

  always @(posedge clk) begin
    registro00 <= io_in01;
  end
endmodule

module Mod3(input clk,
    input  io_in03,
    output io_out03
);

  wire modulo1_io_out01;
  wire modulo2_io_out02;


  assign io_out03 = modulo2_io_out02;
  Mod1 modulo1(.clk(clk),
       .io_in01( io_in03 ),
       .io_out01( modulo1_io_out01 )
  );
  Mod2 modulo2(.clk(clk),
       .io_in02( modulo1_io_out01 ),
       .io_out02( modulo2_io_out02 )
       //.io_fin02(  )
       //.io_fout02(  )
  );
  `ifndef SYNTHESIS
    assign modulo2.io_fin02 = {1{$random}};
  `endif
endmodule

