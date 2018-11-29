#!/bin/bash
#SBATCH --job-name=mnist-hnswlib-1
#SBATCH -o slurm_output/mnist-hnswlib-1.txt
#SBATCH --workdir=/wrk/hyvi/ann-util
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=10G
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ville.o.hyvonen@helsinki.fi

module load Python/3.6.4-foss-2018a

cd /wrk/hyvi
source ann-env2/bin/activate

cd ann-benchmarks
srun python run.py --dataset mnist-784-euclidean --algorithm hnswlib --local --force --count 1
