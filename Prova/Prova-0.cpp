#include "Prova.h"

void Prova_t::init ( bool rand_init ) {
}
int Prova_t::clock ( dat_t<1> reset ) {
  uint32_t min = ((uint32_t)1<<31)-1;
  if (clk_cnt < min) min = clk_cnt;
  clk_cnt-=min;
  if (clk_cnt == 0) clock_lo( reset );
  if (clk_cnt == 0) clock_hi( reset );
  if (clk_cnt == 0) clk_cnt = clk;
  return min;
}
mod_t* Prova_t::clone() {
  mod_t* cloned = new Prova_t(*this);
  return cloned;
}
bool Prova_t::set_circuit_from(mod_t* src) {
  Prova_t* mod_typed = dynamic_cast<Prova_t*>(src);
  assert(mod_typed);
  Prova__io_out = mod_typed->Prova__io_out;
  clk = mod_typed->clk;
  clk_cnt = mod_typed->clk_cnt;
  return true;
}
void Prova_t::print ( FILE* f ) {
}
