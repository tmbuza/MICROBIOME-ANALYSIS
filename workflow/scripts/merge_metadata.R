#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

library(tidyverse, suppressPackageStartupMessages())
inner_join(
    read_csv("data/metadata/PRJNA477349.csv"), 
    read_csv("data/metadata/runinfo_PRJNA477349.csv"), 
    by = c('Run'='Run', 'Bases'='bases')) %>% 
    write_csv("data/metadata/PRJNA477349_full_metadata.csv")

library(tidyverse, suppressPackageStartupMessages())
inner_join(
    read_csv("data/metadata/PRJNA802976.csv"), 
    read_csv("data/metadata/runinfo_PRJNA802976.csv"), 
    by = c('Run'='Run', 'Bases'='bases')) %>% 
    write_csv("data/metadata/PRJNA802976_full_metadata.csv")

library(tidyverse, suppressPackageStartupMessages())
inner_join(
    read_csv("data/metadata/PRJNA685168.csv"), 
    read_csv("data/metadata/runinfo_PRJNA685168.csv"), 
    by = c('Run'='Run', 'Bases'='bases')) %>% 
    write_csv("data/metadata/PRJNA685168_full_metadata.csv")

library(tidyverse, suppressPackageStartupMessages())
inner_join(
    read_csv("data/metadata/PRJEB21612.csv"), 
    read_csv("data/metadata/runinfo_PRJEB21612.csv"), 
    by = c('Run'='Run', 'Bases'='bases')) %>% 
    write_csv("data/metadata/PRJEB21612_full_metadata.csv")
