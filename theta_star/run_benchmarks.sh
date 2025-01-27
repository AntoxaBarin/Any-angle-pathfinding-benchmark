#!/bin/bash

ant clean
ant 
java -jar dist/AAP.jar -Xmx4096m BasicThetaStar custom

python3 pyscripts/data_prepare.py

mv theta_star_AR0500SR_result.csv ../results
mv theta_star_maze512-2-5_result.csv ../results
mv theta_star_Milan_1_1024_result.csv ../results
mv theta_star_random512-20-0_result.csv ../results

rm -rf testResults