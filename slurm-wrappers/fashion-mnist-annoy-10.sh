#!/bin/bash
#SBATCH --job-name=fashion-mnist-annoy-10
#SBATCH -o slurm_output/fashion-mnist-annoy-10.txt
#SBATCH --workdir=/wrk/hyvi/ann-util
#SBATCH -c 1
#SBATCH -t 4:00:00
#SBATCH --mem=2G
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=ville.o.hyvonen@helsinki.fi

module load Python/3.6.4-foss-2018a

cd /wrk/hyvi
source ann-env2/bin/activate

cd ann-benchmarks
srun python run.py --dataset fashion-mnist-784-euclidean --algorithm annoy --local --force --count 10
