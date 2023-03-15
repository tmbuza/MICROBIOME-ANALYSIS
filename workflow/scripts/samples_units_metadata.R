library(tidyverse, suppressPackageStartupMessages())

read_csv("data/metadata/metadata.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  select(sample_name = run, condition = bioproject) %>% 
  write_csv("config/samples.tsv")

read_csv("data/metadata/metadata.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  select(sample_name = run, condition = bioproject, latitude, longitude) %>% 
  write_csv("config/units.tsv")
