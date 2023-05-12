#!/bin/bash
#SBATCH --ntasks-per-node=8
#SBATCH --time=96:00:00
#SBATCH --job-name=analysis
#SBATCH --error=err.err
#SBATCH --output=out.out
#SBATCH --partition=standard
#SBATCH -N 1

export LD_LIBRARY_PATH=/usr/lib64/libseccomp.so.2
module load intel/2018.5.274
module load singularity/3.2.1
#module load python/3.7
#module list
#env| grep LIB
#locate libseccomp
#singularity run CLIMT.sif
#held_suarez.py
singularity exec climt_rare.sif python extract_series.py
#mpirun -n 48 singularity exec CLIMT.sif python held_suarez.py
#mpirun -n 96 /home/arnab/ritu/software/gmx20194_plmd254_impi_dbl/bin/gmx_mpi_d mdrun -deffnm MD_ATP_onlywater_long3
