library(tidyverse, suppressPackageStartupMessages())

PRJNA477349_metadata <- read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, bases)
  
PRJNA802976_metadata <- read_csv("data/metadata/PRJNA802976_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, bases)
  
PRJNA322554_metadata <- read_csv("data/metadata/PRJNA322554_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, bases)
  
PRJNA937707_metadata <- read_csv("data/metadata/PRJNA937707_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, bases)
  
PRJNA589182_metadata <- read_csv("data/metadata/PRJNA589182_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, bases)

PRJEB13870_metadata <- read_csv("data/metadata/PRJEB13870_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, bases)

PRJNA208226_metadata <- read_csv("data/metadata/PRJNA208226_tidy_metadata.csv", show_col_types=FALSE) %>% 
  select(run, bioproject, latitude, longitude, bases)


df1 <- rbind(PRJNA477349_metadata, PRJNA802976_metadata)
df2 <- rbind(df1, PRJNA322554_metadata)
df3 <- rbind(df2, PRJNA937707_metadata)
df4 <- rbind(df3, PRJNA589182_metadata)
df5 <- rbind(df4, PRJEB13870_metadata)
df6 <- rbind(df5, PRJNA208226_metadata)

write_csv(df6, "data/metadata/metadata.csv")