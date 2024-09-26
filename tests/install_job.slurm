#!/bin/bash
#SBATCH --job-name="install"
#SBATCH --output="install_atomic.out"
#SBATCH --error="install_atomic.err"
#SBATCH --partition=gpuA100x4,gpuA40x4
#SBATCH --mem=128G
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --gpus-per-node=1
#SBATCH --gpu-bind=closest
#SBATCH --account=bcjw-delta-gpu
#SBATCH -t 02:30:00

module reset
module load cuda

echo -e "job $SLURM_JOBID is starting on `hostname`\n\n"

