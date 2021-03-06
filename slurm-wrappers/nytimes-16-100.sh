#!/bin/bash
#SBATCH --job-name=nytimes-16-100
#SBATCH -o slurm_output/nytimes-16-100.txt
#SBATCH --workdir=/wrk/hyvi/ann-util
#SBATCH -c 1
#SBATCH -t 5:00:00
#SBATCH --mem=30G
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ville.o.hyvonen@helsinki.fi

module load Python/3.6.4-foss-2018a

cd /wrk/hyvi
source ann-env2/bin/activate

cd ann-benchmarks
srun python run.py --dataset nytimes-16-angular --algorithm mrpt --local --force --count 100
