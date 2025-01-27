#ifndef TEST_H
#define TEST_H

#include <cassert>
#include <vector>
#include <string>
#include <fstream>
#include <sstream>
#include <chrono>

#include "graph.h"
#include "heuristics.h"
#include "algorithms.h"
#include "stats.h"

struct Task {
  int start_x;
  int start_y;
  int goal_x;
  int goal_y;
};

std::vector<Task> loadTasks(std::string path) {
  std::ifstream in(path);
  std::vector<Task> result;

  std::string line;
  std::string _;

  std::getline(in, _);
  while (std::getline(in, line)) {
    std::istringstream iss(line);
    int sX, sY, gX, gY;
    iss >> _ >> _ >> _ >> _ >> sX >> sY >> gX >> gY;
    result.push_back({sX, sY, gX, gY});
  }
  in.close();
  return result;
}

int test_path_costs(std::string path) {
  std::cout << "MAP: " << path << std::endl;
  Stats stats_astar_heap("A* with a heap"),
        stats_astar_basic("A* (basic)");
  Graph graph;
  graph.load_ascii_map("../../maps/" + path + ".map", EDGES_OCTILE);
  std::vector<Task> tasks = loadTasks("../../tasks/" + path +".map.scen");

  for (int ii = 0; ii < tasks.size(); ++ii) {
    Node *ss = 0, *gg = 0;
    ss = graph.node_at(tasks[ii].start_x, tasks[ii].start_y);
    gg = graph.node_at(tasks[ii].goal_x, tasks[ii].goal_y);

    astar_basic(graph, ss, gg, stats_astar_basic, &octile_heuristic);
    
    auto start = std::chrono::high_resolution_clock::now();

    astar_heap(graph, ss, gg, stats_astar_heap, &octile_heuristic);
    
    auto elapsed = std::chrono::high_resolution_clock::now() - start;
    long long microseconds = std::chrono::duration_cast<std::chrono::microseconds>(elapsed).count();
    std::cout << microseconds << '\n';
  }

  // Ensure optimal paths found by all algorithms have the same cost:
  size_t expected_path_cost = stats_astar_basic.path_cost;
  assert(stats_astar_heap.path_cost == expected_path_cost);
  std::cout << std::endl;

  return 0;
}

#endif // TEST_H
