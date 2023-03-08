import os
import sys
import csv
import pandas as pd

METADATA=pd.read_csv('data/metadata/PRJNA477349_tidy_metadata.csv').loc[0:9]
ACCESSIONS=METADATA['run_accession'].tolist()

with open('results/PRJNA477349_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJNA802976_tidy_metadata.csv').loc[0:9]
ACCESSIONS=METADATA['run_accession'].tolist()

with open('results/PRJNA802976_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJNA685168_tidy_metadata.csv').loc[0:9]
ACCESSIONS=METADATA['run_accession'].tolist()

with open('results/PRJNA685168_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJEB21612_tidy_metadata.csv').loc[0:9]
ACCESSIONS=METADATA['run_accession'].tolist()

with open('results/PRJEB21612_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)
