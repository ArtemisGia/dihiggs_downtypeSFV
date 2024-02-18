#!/bin/bash
#
#SBATCH --job-name=Hhh_down
#SBATCH --output=res-atlas-Hhh_kc.txt
#SBATCH --ntasks-per-node=2
#SBATCH --nodes=2
#SBATCH --time=4:00:00
#SBATCH -p short-28core
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=artemissofia.giannakopoulou@stonybrook.edu


cd /gpfs/home/argiannakopo/MG5_aMC_v3_4_1
./bin/mg5_aMC /gpfs/home/argiannakopo/SFV/DownType_csv_PW/Hhh_downtype/H_to_hh_MG5_run_script.txt

