#!/bin/bash
#SBATCH --job-name=poppipe_kp
#SBATCH --output=/vol/projects/jburgaya/pipeline/tenet/out/logs/poppipe_kp.out
#SBATCH --error=/vol/projects/jburgaya/pipeline/tenet/out/logs/poppipe_kp.err
#SBATCH --partition=cpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=20G
#SBATCH --time=168:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=judit.burgayaventura@helmholtz-hzi.de
#SBATCH --cluster=bioinf

# set path to conda
unset PYTHONPATH
export PATH=/vol/cluster-data/jburgaya/miniconda3/bin:$PATH
source /vol/cluster-data/jburgaya/miniconda3/etc/profile.d/conda.sh

cd /vol/projects/jburgaya/pipeline/PopPIPE

# Run the provided command
conda run -n poppipe "$@"

