#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

library(tidyverse, suppressPackageStartupMessages())

# Ascending order
 read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA477349_read_size_asc.csv")

# Ascending order
 read_csv("data/metadata/PRJNA802976_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA802976_read_size_asc.csv")

# Ascending order
 read_csv("data/metadata/PRJNA322554_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA322554_read_size_asc.csv")

# Ascending order
 read_csv("data/metadata/PRJNA937707_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA937707_read_size_asc.csv")


# Ascending order
 read_csv("data/metadata/PRJNA589182_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA589182_read_size_asc.csv")

# Descending order
 read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA477349_read_size_desc.csv")

# Descending order
 read_csv("data/metadata/PRJNA802976_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA802976_read_size_desc.csv")

# Descending order
 read_csv("data/metadata/PRJNA322554_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA322554_read_size_desc.csv")

# Descending order
 read_csv("data/metadata/PRJNA937707_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(-mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA937707_read_size_desc.csv")


# Descending order
 read_csv("data/metadata/PRJNA589182_tidy_metadata.csv", show_col_types = FALSE) %>%
  arrange(mb_bases) %>% 
  select(run, mb_bases) %>% 
  head(5) %>% 
  write_csv("results/PRJNA589182_read_size_desc.csv")
