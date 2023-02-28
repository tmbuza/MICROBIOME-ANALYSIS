#!/bin/bash

# multispecies 16S rRNA from bushmeat samples collected from Tanzania Metagenome
esearch -db sra -query 'PRJNA477349[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJNA477349.csv;

# Multi-omics suggest diverse mechanisms for response to biologic therapies in IBD
esearch -db sra -query 'PRJNA685168[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJNA685168.csv;

# Alterations of the gut microbiome in hypertension
esearch -db sra -query 'PRJEB21612[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJEB21612.csv;

# Changes to Gut Microbiota following Systemic Antibiotic Administration in Infants
esearch -db sra -query 'PRJNA802976[bioproject]' | efetch -format runinfo >data/metadata/runinfo_PRJNA802976.csv;