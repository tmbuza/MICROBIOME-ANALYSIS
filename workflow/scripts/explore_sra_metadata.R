# NCBI BioProject PRJNA477349: Bushmeat samples
library(tidyverse, suppressPackageStartupMessages())

read_csv("data/metadata/PRJNA477349.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  rename(sample_id = run) %>% 
  drop_na(lat_lon) %>% 
  mutate(
    geo_loc_name = str_replace_all(geo_loc_name, "Tanzania: ", ""),
    geo_loc_name = str_replace_all(geo_loc_name, "The Greater Serengeti Ecosystem", "Serengeti"),
    geo_loc_name = str_replace_all(geo_loc_name, " Ecosystem", ""),
    isolate = str_replace_all(isolate, "_\\d*$", ""),
    lat_lon = str_replace_all(lat_lon, " E$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " S.*", "")) * -1,
    longitude = as.numeric(str_replace_all(lat_lon, ".*S ", ""))) %>% 
  rename(ecosystem = geo_loc_name) %>%
  rename(description = host) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(sample_id, ecosystem, isolate, latitude, longitude, mb_bases=bases, description) %>%
  write_csv("data/metadata/tidy_PRJNA477349.csv")

# NCBI BioProject PRJNA685168: IBD responses to biologic therapies study
library(tidyverse, suppressPackageStartupMessages())

read_csv("data/metadata/PRJNA685168.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  distinct(., sample_id, .keep_all = TRUE) %>% 
  rename(wk14 = wk14_remission) %>%
  rename(wk52 = wk52_remission) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(sample_id=run, age, sex, bmi, smoking, steriods, antibiotics, biologic, priortnf, wk14, wk52, mb_bases=bases) %>%
  write_csv("data/metadata/tidy_PRJNA685168.csv")


read_csv("data/metadata/PRJNA802976.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>%
  rename(sample_id = run) %>% 
  distinct(., sample_id, .keep_all = TRUE) %>% 
  mutate(
    lat_lon = str_replace_all(lat_lon, " E$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " N.*", "")),
    longitude = as.numeric(str_replace_all(lat_lon, ".*N ", ""))) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(sample_id, latitude, longitude, mb_bases=bases)  %>% 
  write_csv("data/metadata/tidy_PRJNA802976.csv")