#!/bin/bash
#$ -N filter_AADR_to_rs1790218_proxy_variants
#$ -M colin.brand@ucsf.edu
#$ -m ae
#$ -cwd
#$ -o /wynton/group/capra/projects/SLC22A10/scripts/filter_AADR_to_rs1790218_proxy_variants.out
#$ -e /wynton/group/capra/projects/SLC22A10/scripts/filter_AADR_to_rs1790218_proxy_variants.err
#$ -l h_rt=24:00:00
#$ -l mem_free=20G

# load conda environment
source ~/miniconda3/etc/profile.d/conda.sh
conda activate EIG

# run
convertf -p filter_AADR_to_rs1790218_proxy_variants.par
