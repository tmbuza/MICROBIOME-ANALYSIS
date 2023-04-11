#!/bin/bash


esearch -db sra -query 'PRJNA477349[bioproject]' | efetch -format runinfo >data/metadata/PRJNA477349_runinfo.csv

esearch -db sra -query 'PRJNA802976[bioproject]' | efetch -format runinfo >data/metadata/PRJNA802976_runinfo.csv

esearch -db sra -query 'PRJNA322554[bioproject]' | efetch -format runinfo >data/metadata/PRJNA322554_runinfo.csv

esearch -db sra -query 'PRJNA937707[bioproject]' | efetch -format runinfo >data/metadata/PRJNA937707_runinfo.csv

esearch -db sra -query 'PRJNA589182[bioproject]' | efetch -format runinfo >data/metadata/PRJNA589182_runinfo.csv

esearch -db sra -query 'PRJEB13870[bioproject]' | efetch -format runinfo >data/metadata/PRJEB13870_runinfo.csv


