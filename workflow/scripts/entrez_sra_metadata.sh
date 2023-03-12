#!/bin/bash

esearch -db sra -query 'PRJNA477349[bioproject]' | efetch -format runinfo >data/metadata/PRJNA477349_entrez_metadata.csv;

esearch -db sra -query 'PRJNA802976[bioproject]' | efetch -format runinfo >data/metadata/PRJNA802976_entrez_metadata.csv;

esearch -db sra -query 'PRJNA322554[bioproject]' | efetch -format runinfo >data/metadata/PRJNA322554_entrez_metadata.csv;

esearch -db sra -query 'PRJNA937707[bioproject]' | efetch -format runinfo >data/metadata/PRJNA937707_entrez_metadata.csv;
