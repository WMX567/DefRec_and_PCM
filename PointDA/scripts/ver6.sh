#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=2GB
#SBATCH --time=00:5:00
#SBATCH --output=ver6.out


sbatch sm1.sh
sbatch ms1.sh
sbatch s+m1.sh
sbatch ms+1.sh
sbatch s+s1.sh
sbatch ss+1.sh
