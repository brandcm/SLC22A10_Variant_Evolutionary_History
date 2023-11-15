This directory contains scripts used in the analysis and visualization of *SLC22A10* variants. Scripts are described briefly below.

- 1_data_preparation.ipynb prepares data to generate a figure of allele frequency trajectories for two rs1790218 proxy variants.

- 2_figures.ipynb uses the data generated above to create a figure.

- filter_AADR_to_rs1790218_proxy_SNVs.par is a configuration file used in the shell script below.

- filter_AADR_to_rs1790218_proxy_SNVs.sh subsets genotypes for rs1790218 proxy variants from the AADR dataset.

- retrieve_rs1790218_proxy_variants_1KG_phase_3_genotypes.sh retrieves genotypes from the original Thousand Genomes phase 3 individuals for two rs1790218 proxy variants. 
