library(tidyverse, suppressPackageStartupMessages())

read_csv("data/metadata/PRJNA477349_SraRunTable.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  select_if(~sum((!is.na(.))) > 0) %>% # Remove empty columns
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
  select(run, ecosystem, isolate, latitude, longitude, mb_bases=bases, description) %>%
  write_csv("data/metadata/PRJNA477349_tidy_metadata.csv")


read_csv("data/metadata/PRJNA802976_SraRunTable.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>%
  select_if(~sum((!is.na(.))) > 0) %>%
  filter(!is.na(lat_lon)) %>%
  mutate(
    lat_lon = str_replace_all(lat_lon, " E$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " N.*", "")),
    longitude = as.numeric(str_replace_all(lat_lon, ".*N ", ""))) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(run, bioproject, latitude, longitude, mb_bases=bases) %>% 
  write_csv("data/metadata/PRJNA802976_tidy_metadata.csv")


read_csv("data/metadata/PRJNA322554_SraRunTable.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>%
  select_if(~sum((!is.na(.))) > 0) %>%
  filter(!is.na(lat_lon)) %>%
  mutate(
    lat_lon = str_replace_all(lat_lon, " W$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " N.*", "")),
    longitude = as.numeric(str_replace_all(lat_lon, ".*N ", ""))) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(run, bioproject, latitude, longitude, mb_bases=bases) %>% 
  write_csv("data/metadata/PRJNA322554_tidy_metadata.csv")


read_csv("data/metadata/PRJNA937707_SraRunTable.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>%
  select_if(~sum((!is.na(.))) > 0) %>%
  filter(!is.na(lat_lon)) %>%
  mutate(
    lat_lon = str_replace_all(lat_lon, " W$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " N.*", "")),
    longitude = as.numeric(str_replace_all(lat_lon, ".*N ", ""))) %>%
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(run, bioproject, latitude, longitude, mb_bases=bases) %>% 
  write_csv("data/metadata/PRJNA937707_tidy_metadata.csv")


read_csv("data/metadata/PRJNA589182_SraRunTable.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>%
  rename(lat_lon = "lat-lon") %>%
  filter(bioproject=="PRJNA589182") %>%
  select_if(~sum((!is.na(.))) > 0) %>% 
  mutate(
    lat_lon = str_replace_all(lat_lon, " W$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " N.*", "")),
    longitude = as.numeric(str_replace_all(lat_lon, ".*N ", ""))) %>%
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(run, bioproject, latitude, longitude, mb_bases=bases) %>% 
  write_csv("data/metadata/PRJNA589182_tidy_metadata.csv")