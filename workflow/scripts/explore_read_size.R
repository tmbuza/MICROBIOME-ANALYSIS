#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

library(tidyverse, suppressPackageStartupMessages())

# Ascending order
 read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE) %>%
  dplyr::select(isolate, ecosystem, mb_bases) %>% 
  group_by(isolate, ecosystem) %>% 
  summarise(mb_bases = sum(mb_bases), .groups = "drop") %>% 
  arrange(mb_bases) %>% 
 head() %>% 
  write_csv("results/PRJNA477349_read_size_asc.csv")

# Descending order
 read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE) %>%
  dplyr::select(isolate, ecosystem, mb_bases) %>% 
  group_by(isolate, ecosystem) %>% 
  summarise(mb_bases = sum(mb_bases), .groups = "drop") %>% 
  arrange(-mb_bases) %>% 
 head() %>% 
  write_csv("results/PRJNA477349_read_size_desc.csv")



# Ascending order
 read_csv("data/metadata/PRJNA685168_tidy_metadata.csv", show_col_types = FALSE) %>% 
  dplyr::select(sample_id, antibiotics, biologic, mb_bases) %>% 
  group_by(sample_id, antibiotics, biologic) %>% 
  summarise(mb_bases = sum(mb_bases), .groups = "drop") %>% 
  arrange(mb_bases) %>% 
  head() %>% 
  write_csv("results/PRJNA685168_read_size_asc.csv")

# Descending order
 read_csv("data/metadata/PRJNA685168_tidy_metadata.csv", show_col_types = FALSE) %>% 
  dplyr::select(sample_id, antibiotics, biologic, mb_bases) %>% 
  group_by(sample_id, antibiotics, biologic) %>% 
  summarise(mb_bases = sum(mb_bases), .groups = "drop") %>% 
  arrange(-mb_bases) %>% 
  head() %>% 
  write_csv("results/PRJNA685168_read_size_desc.csv")