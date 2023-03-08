#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

# Script: imap-sample-metadata/workflow/scripts/plot_var_freq.R

# NCBI BioProject PRJNA477349: Bushmeat multispecies
library(tidyverse, suppressPackageStartupMessages())

read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE) %>%  
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

read_csv("data/metadata/PRJNA685168_tidy_metadata.csv", show_col_types = FALSE) %>%  
  ggplot(aes(x = antibiotics, y = mb_bases, fill = biologic)) +
  facet_grid(~sex) +
  geom_col(position = "dodge") +
  coord_flip() +
  labs(x = "Taking Antibiotic", y = "Read size (milion bases)") +
  theme_light()

ggsave(file="images/PRJNA685168_variable_freq.png", width=10, height=10)
ggsave(file="images/PRJNA685168_variable_freq.svg", width=10, height=10)