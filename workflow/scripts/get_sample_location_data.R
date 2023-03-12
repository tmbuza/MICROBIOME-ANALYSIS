library(tidyverse, suppressPackageStartupMessages())

PRJNA477349_loc <- read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, mb_bases)
  
PRJNA802976_loc <- read_csv("data/metadata/PRJNA802976_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, mb_bases)
  
PRJNA322554_loc <- read_csv("data/metadata/PRJNA322554_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, mb_bases)
  
PRJNA937707_loc <- read_csv("data/metadata/PRJNA937707_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, mb_bases)
  
PRJNA589182_loc <- read_csv("data/metadata/PRJNA589182_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, mb_bases)


df1 <- rbind(PRJNA477349_loc, PRJNA802976_loc)
df2 <- rbind(df1, PRJNA322554_loc)
df3 <- rbind(df2, PRJNA937707_loc)
df4 <- rbind(df3, PRJNA589182_loc)

write_csv(df4, "results/sample_location.csv")