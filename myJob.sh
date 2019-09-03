#!/bin/bash -l
 
#SBATCH -p normal

#SBATCH -J mpijob           # Job name
#SBATCH -o mpijob.o%j     # Name of stdout output file
#SBATCH -e mpijob.e%j     # Name of stderr error file
#SBATCH -N 1               # Total # of nodes
#SBATCH -n 16              # Total # of mpi tasks
#SBATCH -t 00:50:00        # Run time (hh:mm:ss)

export MPICH_MAX_THREAD_SAFETY=multiple
export OMP_NUM_THREADS=16
export OMP_PLACES=threads
export OMP_PROC_BIND=spread
mpirun -n 1 ./affinity_carl | sort -k4n -k8n
