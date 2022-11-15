#!/bin/bash

#SBATCH --partition=spgpu
#SBATCH --time=00-10:00:00
#SBATCH --gpus=1
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=32GB
#SBATCH --account=eecs595f22_class
# set up job
module load python/3.9.12
module load cuda/11.3.0
pushd /home/panqp/595/project
source env/bin/activate

# run job
pwd
jupyter nbconvert --to notebook --execute --inplace Verifiable-Coherent-NLU.ipynb