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
