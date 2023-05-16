#!/bin/bash
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:10:00
#SBATCH --job-name=GKTL_wrap
#SBATCH --partition=standard
#SBATCH -N 1

cd /home/apps/DL-conda/bin
source activate
conda activate climt

cd /scratch/abel
python GKTL_wrap.py $1 $2       
~                                                                                                                                                                                                           
~                                                                                                                                                                                                           
~                                                                                                                                                                                                           
~                                    
