#include "Prova.h"

int main (int argc, char* argv[]) {
  Prova_t* module = new Prova_t();
  module->init();
  Prova_api_t* api = new Prova_api_t();
  api->init(module);
  FILE *f = NULL;
  FILE *tee = NULL;  module->set_dumpfile(f);
  api->set_teefile(tee);
  api->read_eval_print_loop();
  fclose(f);
  fclose(tee);
}
