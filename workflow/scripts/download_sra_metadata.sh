#!/bin/bash


esearch -db sra -query 'PRJNA477349[bioproject]' | efetch -format runinfo >data/metadata/PRJNA477349_runinfo.csv

esearch -db sra -query 'PRJNA802976[bioproject]' | efetch -format runinfo >data/metadata/PRJNA802976_runinfo.csv

esearch -db sra -query 'PRJNA322554[bioproject]' | efetch -format runinfo >data/metadata/PRJNA322554_runinfo.csv

esearch -db sra -query 'PRJNA937707[bioproject]' | efetch -format runinfo >data/metadata/PRJNA937707_runinfo.csv

esearch -db sra -query 'PRJNA589182[bioproject]' | efetch -format runinfo >data/metadata/PRJNA589182_runinfo.csv

esearch -db sra -query 'PRJEB13870[bioproject]' | efetch -format runinfo >data/metadata/PRJEB13870_runinfo.csv




pysradb metadata PRJNA477349 --detailed >data/metadata/PRJNA477349_pysradb.csv

pysradb metadata PRJNA802976 --detailed >data/metadata/PRJNA802976_pysradb.csv

pysradb metadata PRJNA322554 --detailed >data/metadata/PRJNA322554_pysradb.csv

pysradb metadata PRJNA937707 --detailed >data/metadata/PRJNA937707_pysradb.csv

pysradb metadata PRJNA589182 --detailed >data/metadata/PRJNA589182_pysradb.csv

pysradb metadata PRJEB13870 --detailed >data/metadata/PRJEB13870_pysradb.csv
