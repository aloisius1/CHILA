#ifndef __ciccio__
#define __ciccio__

#include "emulator.h"

class ciccio_t : public mod_t {
 public:
  dat_t<1> ciccio__io_in0;
  dat_t<1> ciccio__io_in0__prev;
  dat_t<1> ciccio__io_sel;
  dat_t<1> ciccio__io_sel__prev;
  dat_t<1> ciccio__io_in1;
  dat_t<1> ciccio__io_in1__prev;
  dat_t<1> ciccio__io_out;
  dat_t<1> ciccio__io_out__prev;
  int clk;
  int clk_cnt;

  void init ( bool rand_init = false );
  void clock_lo ( dat_t<1> reset );
  void clock_hi ( dat_t<1> reset );
  int clock ( dat_t<1> reset );
  mod_t* clone();
  bool set_circuit_from(mod_t* src);
  void print ( FILE* f );
  void dump ( FILE* f, int t );
  void dump_init ( FILE* f );
};

class ciccio_api_t : public mod_api_t {
  void init_mapping_table();
};



#endif
