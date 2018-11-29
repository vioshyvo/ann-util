#!/bin/bash
#SBATCH --job-name=mnist
#SBATCH -o slurm_output/mnist.txt
#SBATCH --workdir=/wrk/hyvi/ann-util
#SBATCH -p test
#SBATCH -c 1
#SBATCH -t 20:00
#SBATCH --mem=2G
#SBATCH --mail-type=END
#SBATCH --mail-user=ville.o.hyvonen@helsinki.fi

module load Python/3.6.4-foss-2018a

cd /wrk/hyvi
source ann-env2/bin/activate

cd ann-benchmarks
srun python run.py --dataset mnist-784-euclidean --algorithm mrpt --local