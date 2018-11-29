#!/bin/bash
#SBATCH --job-name=glove-100-hnswlib
#SBATCH -o slurm_output/glove-100-hnswlib.txt
#SBATCH --workdir=/wrk/hyvi/ann-util
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=50G
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ville.o.hyvonen@helsinki.fi

module load Python/3.6.4-foss-2018a

cd /wrk/hyvi
source ann-env2/bin/activate

cd ann-benchmarks
srun python run.py --dataset glove-100-angular --algorithm hnswlib --local --force --count 100
