rule create_mapping_files:  
    input:
        metadata="data/metadata/metadata.csv"
    output:
        samples="config/samples.tsv",
        units="config/units.tsv",
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/create_mapping_files.R" 
