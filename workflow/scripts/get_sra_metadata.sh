#!/bin/bash

# multispecies 16S rRNA from bushmeat samples collected from Tanzania Metagenome
# esearch -db sra -query 'PRJNA477349[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJNA477349.csv;
pysradb metadata --saveto data/metadata/PRJNA477349_metadata.csv --detailed srp_id PRJNA477349 
# pysradb metadata --saveto data/metadata/PRJNA477349_metadata_.csv --detailed srp_id PRJNA477349 

# Changes to Gut Microbiota following Systemic Antibiotic Administration in Infants
# esearch -db sra -query 'PRJNA802976[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJNA802976.csv;
pysradb metadata --saveto data/metadata/PRJNA802976_metadata.csv --detailed srp_id PRJNA802976 
# pysradb metadata --saveto data/metadata/PRJNA802976_metadata_.csv --detailed srp_id PRJNA802976 

# Multi-omics suggest diverse mechanisms for response to biologic therapies in IBD
# esearch -db sra -query 'PRJNA685168[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJNA685168.csv;
pysradb metadata --saveto data/metadata/PRJNA685168_metadata.csv --detailed srp_id PRJNA685168
# pysradb metadata --saveto data/metadata/PRJNA685168_metadata_.csv --detailed srp_id PRJNA685168

# Alterations of the gut microbiome in hypertension
# esearch -db sra -query 'PRJEB21612[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJEB21612.csv;
pysradb metadata --saveto data/metadata/PRJEB21612_metadata.csv --detailed srp_id PRJEB21612 
# pysradb metadata --saveto data/metadata/PRJEB21612_metadata_.csv --detailed srp_id PRJEB21612 



 
