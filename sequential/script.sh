#!/bin/bash
#SBATCH --job-name=haileyC
#SBATCH --partition=Centaurus
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=16G
#SBATCH --output=result.txt

./program 3 200 5000000 50000
./program 100 1 10000 100
./program 1000 1 10000 100
