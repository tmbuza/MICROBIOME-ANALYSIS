#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

# NCBI BioProject PRJNA685168: Bushmeat samples
library(tidyverse, suppressPackageStartupMessages())

PRJNA477349 <- read_csv("data/metadata/runinfo_PRJNA477349.csv", show_col_types = FALSE)

PRJNA685168 <- read_csv("data/metadata/runinfo_PRJNA685168.csv", show_col_types = FALSE)

PRJEB21612 <- read_csv("data/metadata/runinfo_PRJEB21612.csv", show_col_types = FALSE)

PRJNA802976 <- read_csv("data/metadata/runinfo_PRJNA802976.csv", show_col_types = FALSE)

runinfo = rbind(PRJNA477349, PRJNA685168)
runinfo = rbind(runinfo, PRJEB21612)
runinfo = rbind(runinfo, PRJNA802976)

runinfo %>% 
  select(Run, bases, avgLength, size_MB, LibraryStrategy,Platform,Model) %>% 
  filter(LibraryStrategy=='AMPLICON') %>% 
  write_csv("data/metadata/metadata_16S.csv")

runinfo %>% 
  select(Run, bases, avgLength, size_MB, LibraryStrategy,Platform,Model) %>% 
  filter(LibraryStrategy=='WGS') %>% 
  write_csv("data/metadata/metadata_WGS.csv")

