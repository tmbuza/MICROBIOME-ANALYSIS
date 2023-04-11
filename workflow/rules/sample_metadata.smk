# Process SraRunTable
rule process_downloaded_sra_metadata:  
    input:
        metadata=expand("data/metadata/{bioproject}_SraRunTable.csv", bioproject=config["bioproject"]),
    output:
        tidymeta=expand("data/metadata/{bioproject}_tidy_metadata.csv", bioproject=config["bioproject"]),
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/process_sraruntable.R" 

# Merged project metadata
rule merge_bioproj_metadata:
    input:
        tidymeta=expand("data/metadata/{bioproject}_tidy_metadata.csv", bioproject=config["bioproject"]),
    output:
        mergedmeta="data/metadata/metadata.csv",
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/merge_proj_metadata.R"    
 

# Get read size
rule create_read_size_table:
    input:
        "data/metadata/metadata.csv",
    output:
        asc="results/read_size_asc.csv",
        desc="results/read_size_desc.csv"
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/explore_read_size.R"


# Get variable barplot
rule plot_read_size:
    input:
        asc="results/read_size_asc.csv",
        desc="results/read_size_desc.csv"
    output:
        png="images/read_size.png",
        svg=report("images/read_size.svg", caption="../report/readsize.rst", category="BioProject Read size"),
        varpng="images/PRJNA477349_read_size.png",
        bushmeat=report("images/PRJNA477349_read_size.svg", caption="../report/PRJNA477349.rst", category="Bushmeat TZ"),
        atacama=report("images/PRJNA208226_read_size.svg", caption="../report/PRJNA208226.rst", category="Atacama Soil Chile"),
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/plot_var_freq.R"


# Get sample location 
rule plot_sampling_points:
    input:
        metadata="data/metadata/metadata.csv",
    output:
        gps=report("images/sample_gps.png", caption="../report/gps.rst", category="Sampling GPS"),
    conda:
        "../envs/environment.yml"
    script:
        "../scripts/plot_sampling_points.R"



