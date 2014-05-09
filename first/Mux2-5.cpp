#include "Mux2.h"

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
