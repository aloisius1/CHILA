#include "ciccio.h"

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
