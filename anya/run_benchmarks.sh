make
cd ./../maps
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/AR0500SR.map.scen > ./../results/anya_AR0500SR_result.csv
echo "AR0500SR anya done"
java -cp ./../anya ScenarioRunner -ASTAR ./../tasks/AR0500SR.map.scen > ./../results/astar_AR0500SR_result.csv
echo "AR0500SR astar done"
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/maze512-2-5.map.scen > ./../results/anya_maze512-2-5_result.csv
echo "maze512-2-5 anya done"
java -cp ./../anya ScenarioRunner -ASTAR ./../tasks/maze512-2-5.map.scen > ./../results/astar_maze512-2-5_result.csv
echo "maze512-2-5 astar done"
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/Milan_1_1024.map.scen > ./../results/anya_Milan_1_1024_result.csv
echo "Milan_1_1024 anya done"
java -cp ./../anya ScenarioRunner -ASTAR ./../tasks/Milan_1_1024.map.scen > ./../results/astar_Milan_1_1024_result.csv
echo "Milan_1_1024 astar done"
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/random512-20-0.map.scen > ./../results/anya_random512-20-0_result.csv
echo "random512-20-0 anya done"
java -cp ./../anya ScenarioRunner -ASTAR ./../tasks/random512-20-0.map.scen > ./../results/astar_random512-20-0_result.csv
echo "random512-20-0 astar done"