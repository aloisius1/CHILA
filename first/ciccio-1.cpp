#include "ciccio.h"

void ciccio_t::dump_init(FILE *f) {
  fputs("$timescale 1ps $end\n", f);
  fputs("$scope module ciccio $end\n", f);
  fputs("$var wire 1 \x21 io_in0 $end\n", f);
  fputs("$var wire 1 \x22 io_sel $end\n", f);
  fputs("$var wire 1 \x23 io_in1 $end\n", f);
  fputs("$var wire 1 \x24 io_out $end\n", f);
  fputs("$upscope $end\n", f);
  fputs("$enddefinitions $end\n", f);
  fputs("$dumpvars\n", f);
  fputs("$end\n", f);
  fputs("#0\n", f);
  dat_dump<1>(f, ciccio__io_in0, 0x21);
  ciccio__io_in0__prev = ciccio__io_in0;
  dat_dump<1>(f, ciccio__io_sel, 0x22);
  ciccio__io_sel__prev = ciccio__io_sel;
  dat_dump<1>(f, ciccio__io_in1, 0x23);
  ciccio__io_in1__prev = ciccio__io_in1;
  dat_dump<1>(f, ciccio__io_out, 0x24);
  ciccio__io_out__prev = ciccio__io_out;
}
