#include "ciccio.h"

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
