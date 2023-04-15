rule paired_mapping_files:  
    input:
        metadata="data/metadata/metadata.csv"
    output:
        "config/pe_samples.tsv",
        "config/pe_units.tsv",
        "resources/metadata/pe_metadata.tsv",
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/paired_mapping_files.R" 


rule single_mapping_files:  
    input:
        metadata="data/metadata/metadata.csv"
    output:
        "config/se_samples.tsv",
        "config/se_units.tsv",
        "resources/metadata/pe_metadata.tsv",
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/single_mapping_files.R" 
