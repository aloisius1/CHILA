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
void Prova_t::dump_init(FILE *f) {
}
void Prova_t::dump(FILE *f, int t) {
}
void Prova_t::clock_lo ( dat_t<1> reset ) {
  { Prova__io_out.values[0] = 0x2aL; }
}
void Prova_t::clock_hi ( dat_t<1> reset ) {
}
void Prova_api_t::init_mapping_table() {
  dat_table.clear();
  mem_table.clear();
  Prova_t* mod_typed = dynamic_cast<Prova_t*>(module);
  assert(mod_typed);
  dat_table["Prova.io_out"] = new dat_api<8>(&mod_typed->Prova__io_out, "Prova.io_out", "");
}
