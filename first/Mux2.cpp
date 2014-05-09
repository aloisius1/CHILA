#include "Mux2.h"

void Mux2_t::init ( bool rand_init ) {
}
int Mux2_t::clock ( dat_t<1> reset ) {
  uint32_t min = ((uint32_t)1<<31)-1;
  if (clk_cnt < min) min = clk_cnt;
  clk_cnt-=min;
  if (clk_cnt == 0) clock_lo( reset );
  if (clk_cnt == 0) clock_hi( reset );
  if (clk_cnt == 0) clk_cnt = clk;
  return min;
}
mod_t* Mux2_t::clone() {
  mod_t* cloned = new Mux2_t(*this);
  return cloned;
}
bool Mux2_t::set_circuit_from(mod_t* src) {
  Mux2_t* mod_typed = dynamic_cast<Mux2_t*>(src);
  assert(mod_typed);
  Mux2__io_in0 = mod_typed->Mux2__io_in0;
  Mux2__io_sel = mod_typed->Mux2__io_sel;
  Mux2__io_in1 = mod_typed->Mux2__io_in1;
  Mux2__io_out = mod_typed->Mux2__io_out;
  clk = mod_typed->clk;
  clk_cnt = mod_typed->clk_cnt;
  return true;
}
void Mux2_t::print ( FILE* f ) {
}
void Mux2_t::dump_init(FILE *f) {
}
void Mux2_t::dump(FILE *f, int t) {
}
void Mux2_t::clock_lo ( dat_t<1> reset ) {
  val_t T0__w0;
  { T0__w0 = ~Mux2__io_sel.values[0]; }
  T0__w0 = T0__w0 & 1;
  val_t T1__w0;
  { T1__w0 = T0__w0&Mux2__io_in0.values[0]; }
  val_t T2__w0;
  { T2__w0 = Mux2__io_sel.values[0]&Mux2__io_in1.values[0]; }
  val_t T3__w0;
  { T3__w0 = T2__w0|T1__w0; }
  { Mux2__io_out.values[0] = T3__w0; }
}
void Mux2_t::clock_hi ( dat_t<1> reset ) {
}
void Mux2_api_t::init_mapping_table() {
  dat_table.clear();
  mem_table.clear();
  Mux2_t* mod_typed = dynamic_cast<Mux2_t*>(module);
  assert(mod_typed);
  dat_table["Mux2.io_in0"] = new dat_api<1>(&mod_typed->Mux2__io_in0, "Mux2.io_in0", "");
  dat_table["Mux2.io_sel"] = new dat_api<1>(&mod_typed->Mux2__io_sel, "Mux2.io_sel", "");
  dat_table["Mux2.io_in1"] = new dat_api<1>(&mod_typed->Mux2__io_in1, "Mux2.io_in1", "");
  dat_table["Mux2.io_out"] = new dat_api<1>(&mod_typed->Mux2__io_out, "Mux2.io_out", "");
}
