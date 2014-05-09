#include "ciccio.h"

void ciccio_t::init ( bool rand_init ) {
}
int ciccio_t::clock ( dat_t<1> reset ) {
  uint32_t min = ((uint32_t)1<<31)-1;
  if (clk_cnt < min) min = clk_cnt;
  clk_cnt-=min;
  if (clk_cnt == 0) clock_lo( reset );
  if (clk_cnt == 0) clock_hi( reset );
  if (clk_cnt == 0) clk_cnt = clk;
  return min;
}
mod_t* ciccio_t::clone() {
  mod_t* cloned = new ciccio_t(*this);
  return cloned;
}
bool ciccio_t::set_circuit_from(mod_t* src) {
  ciccio_t* mod_typed = dynamic_cast<ciccio_t*>(src);
  assert(mod_typed);
  ciccio__io_in0 = mod_typed->ciccio__io_in0;
  ciccio__io_sel = mod_typed->ciccio__io_sel;
  ciccio__io_in1 = mod_typed->ciccio__io_in1;
  ciccio__io_out = mod_typed->ciccio__io_out;
  clk = mod_typed->clk;
  clk_cnt = mod_typed->clk_cnt;
  return true;
}
void ciccio_t::print ( FILE* f ) {
}
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
void ciccio_t::dump(FILE *f, int t) {
  if (t == 0) return dump_init(f);
  fprintf(f, "#%d\n", t);
  if (ciccio__io_in0 != ciccio__io_in0__prev)
    goto L0;
K0:
  if (ciccio__io_sel != ciccio__io_sel__prev)
    goto L1;
K1:
  if (ciccio__io_in1 != ciccio__io_in1__prev)
    goto L2;
K2:
  if (ciccio__io_out != ciccio__io_out__prev)
    goto L3;
K3:
  return;
L0:
  ciccio__io_in0__prev = ciccio__io_in0;
  dat_dump<1>(f, ciccio__io_in0, 0x21);
  goto K0;
L1:
  ciccio__io_sel__prev = ciccio__io_sel;
  dat_dump<1>(f, ciccio__io_sel, 0x22);
  goto K1;
L2:
  ciccio__io_in1__prev = ciccio__io_in1;
  dat_dump<1>(f, ciccio__io_in1, 0x23);
  goto K2;
L3:
  ciccio__io_out__prev = ciccio__io_out;
  dat_dump<1>(f, ciccio__io_out, 0x24);
  goto K3;
}
void ciccio_t::clock_lo ( dat_t<1> reset ) {
  val_t T0__w0;
  { T0__w0 = ~ciccio__io_sel.values[0]; }
  T0__w0 = T0__w0 & 1;
  val_t T1__w0;
  { T1__w0 = T0__w0&ciccio__io_in0.values[0]; }
  val_t T2__w0;
  { T2__w0 = ciccio__io_sel.values[0]&ciccio__io_in1.values[0]; }
  val_t T3__w0;
  { T3__w0 = T2__w0|T1__w0; }
  { ciccio__io_out.values[0] = T3__w0; }
}
void ciccio_t::clock_hi ( dat_t<1> reset ) {
}
void ciccio_api_t::init_mapping_table() {
  dat_table.clear();
  mem_table.clear();
  ciccio_t* mod_typed = dynamic_cast<ciccio_t*>(module);
  assert(mod_typed);
  dat_table["ciccio.io_in0"] = new dat_api<1>(&mod_typed->ciccio__io_in0, "ciccio.io_in0", "");
  dat_table["ciccio.io_sel"] = new dat_api<1>(&mod_typed->ciccio__io_sel, "ciccio.io_sel", "");
  dat_table["ciccio.io_in1"] = new dat_api<1>(&mod_typed->ciccio__io_in1, "ciccio.io_in1", "");
  dat_table["ciccio.io_out"] = new dat_api<1>(&mod_typed->ciccio__io_out, "ciccio.io_out", "");
}
