#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

# Script: imap-sample-metadata/workflow/scripts/plot_var_freq.R

# NCBI BioProject PRJNA477349: Bushmeat multispecies
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
  select(sample_id, ecosystem, isolate, latitude, longitude, mb_bases=bases, description)  %>%

  ggplot(aes(x = isolate, y = mb_bases, fill = ecosystem)) +
  facet_grid(~ ecosystem) +
  geom_col(position = "dodge") +
  coord_flip() +
  labs(x = "Animal Name", y = "Read size (milion bases)") +
  theme_light()

ggsave(file="images/PRJNA477349_variable_freq.png", width=10, height=10)
ggsave(file="images/PRJNA477349_variable_freq.svg", width=10, height=10)



# NCBI BioProject PRJNA685168: IBD responses to biologic therapies study
library(tidyverse, suppressPackageStartupMessages())

read_csv("data/metadata/PRJNA685168.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  distinct(., sample_id, .keep_all = TRUE) %>% 
  rename(wk14 = wk14_remission) %>%
  rename(wk52 = wk52_remission) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(sample_id=run, age, sex, bmi, smoking, steriods, antibiotics, biologic, priortnf, wk14, wk52, mb_bases=bases)  %>%

  ggplot(aes(x = antibiotics, y = mb_bases, fill = biologic)) +
  facet_grid(~sex) +
  geom_col(position = "dodge") +
  coord_flip() +
  labs(x = "Taking Antibiotic", y = "Read size (milion bases)") +
  theme_light()

ggsave(file="images/PRJNA685168_variable_freq.png", width=10, height=10)
ggsave(file="images/PRJNA685168_variable_freq.svg", width=10, height=10)