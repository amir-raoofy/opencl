#!/bin/bash

#SBATCH -o /home/hpc/pr63so/ga59how2/output_slurm/test.%j.out
#SBATCH -D /home/hpc/pr63so/ga59how2/codes/opencl/
#SBATCH -J test
#SBATCH --get-user-env
#SBATCH --partition=nvd
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=2
# #SBATCH --export=NONE
#SBATCH --time=01:30:00

source /etc/profile.d/modules.sh

module load cuda
module load gcc

# mpiexec.hydra -genv OMP_NUM_THREADS 2 -ppn 8 -n 16 deviceQuery
module list
./clpeak
