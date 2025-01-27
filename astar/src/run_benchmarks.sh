#!/bin/bash

g++ -O3 -Wall -std=c++11 -Wpadded graph.cpp heuristics.cpp algorithms.cpp benchmarks.cpp main.cpp -o main

touch astar_AR0500SR_time.csv
touch astar_maze512-2-5_time.csv
touch astar_Milan_1_1024_time.csv
touch astar_random512-20-0_time.csv

./main AR0500SR > astar_AR0500SR_time.csv
echo "AR0500SR done."

./main maze512-2-5 > astar_maze512-2-5_time.csv
echo "maze512-2-5 done."

./main Milan_1_1024 > astar_Milan_1_1024_time.csv
echo "Milan_1_1024 done."

./main random512-20-0 > astar_random512-20-0_time.csv
echo "random512-20-0 done."

mv astar_AR0500SR_time.csv ../../results
mv astar_maze512-2-5_time.csv ../../results
mv astar_Milan_1_1024_time.csv ../../results
mv astar_random512-20-0_time.csv ../../results