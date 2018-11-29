#!/bin/bash
#SBATCH --job-name=sift-annoy-1
#SBATCH -o slurm_output/sift-annoy-1.txt
#SBATCH --workdir=/wrk/hyvi/ann-util
#SBATCH -c 1
#SBATCH -t 06:00:00
#SBATCH --mem=20G
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ville.o.hyvonen@helsinki.fi

module load Python/3.6.4-foss-2018a

cd /wrk/hyvi
source ann-env2/bin/activate

cd ann-benchmarks
srun python run.py --dataset sift-128-euclidean --algorithm annoy --local --force --count 1
