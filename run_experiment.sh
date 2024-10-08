#!/bin/bash
#SBATCH --job-name=inpainting
#SBATCH --mem-per-cpu=5GB
#SBATCH --time=6-23:59:00
#SBATCH --partition normal
#SBATCH --output=output/%A/output_%a.txt
#SBATCH --error=output/%A/error_%a.txt
#SBATCH -n 1
#SBATCH --cpus-per-task 5
#SBATCH --gres gpu:a100

#SBATCH -A project02201                                                                                                                                                                                                 
#SBATCH -p project02201                                                                                                                                                                                      
python demo_script.py $1 $2
