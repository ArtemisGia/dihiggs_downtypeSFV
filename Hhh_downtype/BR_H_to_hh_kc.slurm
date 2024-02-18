#!/bin/bash
#
#SBATCH --job-name=BrHhh_kc
#SBATCH --output=res-BrHhh-kc.txt
#SBATCH --ntasks-per-node=5
#SBATCH --nodes=2
#SBATCH --time=1:00:00
#SBATCH -p debug-28core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=artemissofia.giannakopoulou@stonybrook.edu

math -script BR_H_to_hh_kc.wl
