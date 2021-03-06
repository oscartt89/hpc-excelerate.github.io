#!/bin/bash
# number of tasks:
#SBATCH -n 8
# memory:
#SBATCH --mem=2gb
# time:
#SBATCH --time=00:10:00
# Set output and error files (deactivated here)
##SBATCH --error=job.%J.err
##SBATCH --output=job.%J.out
# partition:
#SBATCH --partition=local

module load openmpi

echo "time mpirun -np 8 ~/hpc-excelerate/day1/bin/mpi_hello_world"
time mpirun -np 8 ~/hpc-excelerate/day1/bin/mpi_hello_world
echo "Done."
