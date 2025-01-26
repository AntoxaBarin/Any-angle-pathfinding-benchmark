make
cd ./../maps
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/AR0500SR.map.scen > ./../results/alternative_anya/anya_AR0500SR_result_nopruning.csv
echo "AR0500SR done"
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/maze512-2-5.map.scen > ./../results/alternative_anya/anya_maze512-2-5_result_nopruning.csv
echo "maze512-2-5 done"
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/Milan_1_1024.map.scen > ./../results/alternative_anya/anya_Milan_1_1024_result_nopruning.csv
echo "Milan_1_1024 done"
java -cp ./../anya ScenarioRunner -ANYA ./../tasks/random512-20-0.map.scen > ./../results/alternative_anya/anya_random512-20-0_result_nopruning.csv
echo "random512-20-0 done"