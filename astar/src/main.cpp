#include <string.h>
#include "benchmarks.h"
#include "test.h"

int main(int argc, char ** argv) {
  if (argc != 2) {
    std::cerr << "Incorrect number of command line args.\n Example: ./main <map-name>\n";
    return -1;
  }

  test_path_costs(argv[1]);
  
  //test_path_costs("AR0500SR");
  // test_path_costs("maze512-2-5");
  // test_path_costs("Milan_1_1024");
  // test_path_costs("random512-20-0");
  return 0;
}

