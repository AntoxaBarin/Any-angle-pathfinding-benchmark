#include <string.h>
#include "benchmarks.h"
#include "test.h"

int main(int argc, char ** argv) {
  if (argc != 2) {
    std::cerr << "Incorrect number of command line args.\n Example: ./main <map-name>\n";
    return -1;
  }

  test_path_costs(argv[1]);
  return 0;
}

