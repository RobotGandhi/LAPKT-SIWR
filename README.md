# LAPKT-SIWR

LAPKT-SIWR is an implementation of SIW_R into the LAPKT planning system.

## Installation
1. Clone recursively
```console
git clone --recursively <link_to_repo>
```
2. Create python3 virtual environment
```console
python3 -m venv --prompt siwr .venv
```
3. Activate virtual environment
```console
source .venv/bin/activate
```
4. Install python packages (needed for experimental code)
```console
pip install -r requirements.txt
```
5. Install submodule planner/dlplan
6. Install SIWR
```console
cd planner/LAPKT-SIWR/planners/siwr
./build.py
```

## How to run the SIW_R Planner
```console
cd planner/LAPKT-SIWR/planners/siwr
./siwr.py <domain_file> <instance_file> <sketch_file> <plan_file>
```

## How to run the Experiments

1. Build the singularities
```console
cd planners
sudo singularity build siwr.img siwr.sif
```

2. Run the experiments
```console
cd experiments
./experiment-siwr.py --all
```
