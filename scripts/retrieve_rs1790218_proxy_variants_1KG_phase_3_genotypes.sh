#!/bin/bash
#$ -N retrieve_rs1790218_proxy_variants_1KG_phase_3_genotypes
#$ -M colin.brand@ucsf.edu
#$ -m ae
#$ -cwd
#$ -o /wynton/group/capra/projects/SLC22A10/scripts/retrieve_rs1790218_proxy_variants_1KG_phase_3_genotypes.out
#$ -e /wynton/group/capra/projects/SLC22A10/scripts/retrieve_rs1790218_proxy_variants_1KG_phase_3_genotypes.err
#$ -l h_rt=24:00:00
#$ -l mem_free=20G

# load modules
module load CBI
module load bcftools/1.18

# change directories
cd /wynton/group/capra/projects/SLC22A10/data

# assign variable
vcf="/wynton/group/capra/data/wynton_databases/1000_genomes/release/20130502/ALL.chr11.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz"

# run
bcftools view -r 11:63072310 "$vcf" | bcftools query -f'chr\tpos\tref\talt[\t%SAMPLE]' > rs1790218_proxy_variants_1KG_phase_3_genotypes.txt
bcftools view -r 11:63072310,11:63066671 "$vcf" | bcftools query -f'%CHROM\t%POS\t%REF\t%ALT[\t%GT]\n' >> rs1790218_proxy_variants_1KG_phase_3_genotypes.txt
