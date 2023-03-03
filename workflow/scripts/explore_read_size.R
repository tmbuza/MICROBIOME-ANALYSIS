#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

library(tidyverse, suppressPackageStartupMessages())

# Ascending order
 read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(sample_id, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA477349_read_size_asc.csv")

# Descending order
 read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(sample_id, mb_bases) %>% 
  tail(5) %>% write_csv("results/PRJNA477349_read_size_desc.csv")

# Ascending order
 read_csv("data/metadata/PRJNA802976_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(sample_id, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA802976_read_size_asc.csv")

# Descending order
 read_csv("data/metadata/PRJNA802976_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(sample_id, mb_bases) %>% 
  tail(5) %>% write_csv("results/PRJNA802976_read_size_desc.csv")

# Ascending order
 read_csv("data/metadata/PRJNA685168_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>%
  select(sample_id, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA685168_read_size_asc.csv")

# Descending order
 read_csv("data/metadata/PRJNA685168_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(sample_id, mb_bases) %>% 
  tail(5) %>% write_csv("results/PRJNA685168_read_size_desc.csv")

# Ascending order
 read_csv("data/metadata/PRJEB21612_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(sample_id, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJEB21612_read_size_asc.csv")

# Descending order
 read_csv("data/metadata/PRJEB21612_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(sample_id, mb_bases) %>% 
  tail(5) %>% write_csv("results/PRJEB21612_read_size_desc.csv")
