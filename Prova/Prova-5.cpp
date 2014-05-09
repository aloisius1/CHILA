#include "Prova.h"

void Prova_api_t::init_mapping_table() {
  dat_table.clear();
  mem_table.clear();
  Prova_t* mod_typed = dynamic_cast<Prova_t*>(module);
  assert(mod_typed);
  dat_table["Prova.io_out"] = new dat_api<8>(&mod_typed->Prova__io_out, "Prova.io_out", "");
}
