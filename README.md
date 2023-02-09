# LAPKT-SIWR

LAPKT-SIWR is an implementation of SIW_R into the LAPKT planning system.

## Installation
1. Clone recursively
```console
git clone --recursively <link_to_repo>
```
2. Create python3 virtual environment
```console
python3 -m venv --prompt hffpi .venv
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
scons
```

## How to run the SIW_R Planner
```console
cd planner/LAPKT-SIWR/planners/siwr
./siwr <domain_file> <instance_file> <sketch_file> <plan_file>
```

## How to run the Experiments

```console
cd experiments
./experiment-hffpi.py --all
```
