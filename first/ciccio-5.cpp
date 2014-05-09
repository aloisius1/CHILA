#include "ciccio.h"

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
