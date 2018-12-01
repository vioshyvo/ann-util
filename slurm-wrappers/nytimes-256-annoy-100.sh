#!/bin/bash
#SBATCH --job-name=nytimes-256-annoy-100
#SBATCH -o slurm_output/nytimes-256-annoy-100.txt
#SBATCH --workdir=/wrk/hyvi/ann-util
#SBATCH -c 1
#SBATCH -t 15:00:00
#SBATCH --mem=15G
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ville.o.hyvonen@helsinki.fi

module load Python/3.6.4-foss-2018a

cd /wrk/hyvi
source ann-env2/bin/activate

cd ann-benchmarks
srun python run.py --dataset nytimes-256-angular --algorithm annoy --local --force --count 100
