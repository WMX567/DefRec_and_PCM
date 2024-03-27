#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=50GB
#SBATCH --time=48:00:00
#SBATCH -p nvidia
#SBATCH --gres=gpu:a100:1
#SBATCH --output=sm1ver6.out




module load miniconda-nobashrc
eval "$(conda shell.bash hook)"
conda activate py38




python /scratch/mw4355/DefRec_and_PCM/trainer.py --out_path ../experiments --dataroot ../data --src_dataset scannet --trgt_dataset modelnet --DefRec_on_src False --cls_weight 0.8 --DefRec_weight 0.2 --lr 1e-4 --wd 5e-5
