library(tidyverse, suppressPackageStartupMessages())

read_csv("data/metadata/PRJNA208226_tidy_metadata.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  select(sample_name = run, condition = locname) %>% 
  write_tsv("config/samples.tsv")

read_csv("data/metadata/PRJNA208226_tidy_metadata.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  select(sample_name = run, condition = locname, latitude, longitude) %>% 
  mutate(latitude=round(latitude, 3)) %>% 
  mutate(longitude=round(longitude, 3)) %>% 
  write_tsv("config/units.tsv")
