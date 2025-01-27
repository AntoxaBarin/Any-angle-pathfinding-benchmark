#include <string.h>
#include "benchmarks.h"
#include "test.h"

int main(int argc, char ** argv) {
  // if (argc > 1 && strcmp(argv[1], "--test") == 0) {
  //   return test_path_costs();
  // }
  // benchmark_grid_costs();

  test_path_costs("AR0500SR");
  test_path_costs("maze512-2-5");
  test_path_costs("Milan_1_1024");
  test_path_costs("random512-20-0");

  return 0;
}

