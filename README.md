# Any-angle-pathfinding-benchmark

Source of `theta_star` code: https://github.com/Ohohcakester/Any-Angle-Pathfinding 

Source of `astar` code: https://github.com/riscy/a_star_on_grids

Source of `Anya` and `PolyAnya` code: https://bitbucket.org/dharabor/pathfinding/src/master/anyangle/

## Usage

Benchmark results are located in `results` folder.

#### A*

```bash
TODO
```

#### Theta*
Run bash script to build project, run benchmarks and process data:
```bash
./theta_star/run_benchmarks.sh 
```

#### Anya
Run script to get results of basic anya algorithm and java implementation of astar:
```bash
cd anya
sh run_benchmarks.sh
```

#### PolyAnya
Run script to get results of polyanya on cdt, m-cdt and rec meshes:
```bash
cd polyanya
sh run_benchmarks.sh
```

## Data visualization

When all benchmarks are completed, run Jupyter notebook `analysis.ipynb`
