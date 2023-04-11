import os
import sys
import csv
import pandas as pd


METADATA=pd.read_csv('data/metadata/PRJNA477349_tidy_metadata.csv').loc[0:3]
ACCESSIONS=METADATA['run'].tolist()

with open('results/PRJNA477349_srarun_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJNA802976_tidy_metadata.csv').loc[0:3]
ACCESSIONS=METADATA['run'].tolist()

with open('results/PRJNA802976_srarun_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJNA322554_tidy_metadata.csv').loc[0:3]
ACCESSIONS=METADATA['run'].tolist()

with open('results/PRJNA322554_srarun_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJNA937707_tidy_metadata.csv').loc[0:3]
ACCESSIONS=METADATA['run'].tolist()

with open('results/PRJNA937707_srarun_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJNA589182_tidy_metadata.csv').loc[0:3]
ACCESSIONS=METADATA['run'].tolist()

with open('results/PRJNA589182_srarun_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/PRJEB13870_tidy_metadata.csv').loc[0:3]
ACCESSIONS=METADATA['run'].tolist()

with open('results/PRJEB13870_srarun_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)

METADATA=pd.read_csv('data/metadata/PRJNA208226_tidy_metadata.csv').loc[0:3]
ACCESSIONS=METADATA['run'].tolist()

with open('results/PRJNA208226_srarun_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)
