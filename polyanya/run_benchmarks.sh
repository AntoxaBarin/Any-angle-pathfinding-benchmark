make all
cd ./../maps
./../polyanya/bin/scenariorunner  ./../meshes/AR0500SR.mesh ./../tasks/AR0500SR.map.scen > ./../results/polyanya_AR0500SR_result.csv
echo "AR0500SR m-cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/AR0500SR_cdt.mesh ./../tasks/AR0500SR.map.scen > ./../results/alternative_polyanya/polyanya_AR0500SR_result_cdt.csv
echo "AR0500SR cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/AR0500SR_rect.mesh ./../tasks/AR0500SR.map.scen > ./../results/alternative_polyanya/polyanya_AR0500SR_result_rect.csv
echo "AR0500SR rec done"
./../polyanya/bin/scenariorunner  ./../meshes/maze512-2-5.mesh ./../tasks/maze512-2-5.map.scen > ./../results/polyanya_maze512-2-5_result.csv
echo "maze512-2-5 m-cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/maze512-2-5_cdt.mesh ./../tasks/maze512-2-5.map.scen > ./../results/alternative_polyanya/polyanya_maze512-2-5_result_cdt.csv
echo "maze512-2-5 cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/maze512-2-5_rect.mesh ./../tasks/maze512-2-5.map.scen > ./../results/alternative_polyanya/polyanya_maze512-2-5_result_rect.csv
echo "maze512-2-5 rec done"
./../polyanya/bin/scenariorunner  ./../meshes/Milan_1_1024.mesh ./../tasks/Milan_1_1024.map.scen > ./../results/polyanya_Milan_1_1024_result.csv
echo "Milan_1_1024 m-cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/Milan_1_1024_cdt.mesh ./../tasks/Milan_1_1024.map.scen > ./../results/alternative_polyanya/polyanya_Milan_1_1024_result_cdt.csv
echo "Milan_1_1024 cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/Milan_1_1024_rect.mesh ./../tasks/Milan_1_1024.map.scen > ./../results/alternative_polyanya/polyanya_Milan_1_1024_result_rect.csv
echo "Milan_1_1024 rec done"
./../polyanya/bin/scenariorunner  ./../meshes/random512-20-0.mesh ./../tasks/random512-20-0.map.scen > ./../results/polyanya_random512-20-0_result.csv
echo "random512-20-0 m-cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/random512-20-0_cdt.mesh ./../tasks/random512-20-0.map.scen > ./../results/alternative_polyanya/polyanya_random512-20-0_result_cdt.csv
echo "random512-20-0 cdt done"
./../polyanya/bin/scenariorunner  ./../meshes/random512-20-0_rect.mesh ./../tasks/random512-20-0.map.scen > ./../results/alternative_polyanya/polyanya_random512-20-0_result_rect.csv
echo "random512-20-0 rec done"
python3 ./../polyanya/prepare_data.py