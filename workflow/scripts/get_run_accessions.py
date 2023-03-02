import os
import sys
import csv
import pandas as pd

METADATA=pd.read_csv('data/metadata/runinfo_PRJNA477349.csv').loc[0:9]
ACCESSIONS=METADATA['Run'].tolist()

with open('data/metadata/PRJNA477349_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/runinfo_PRJNA802976.csv').loc[0:9]
ACCESSIONS=METADATA['Run'].tolist()

with open('data/metadata/PRJNA802976_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/runinfo_PRJNA685168.csv').loc[0:9]
ACCESSIONS=METADATA['Run'].tolist()

with open('data/metadata/PRJNA685168_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)


METADATA=pd.read_csv('data/metadata/runinfo_PRJEB21612.csv').loc[0:9]
ACCESSIONS=METADATA['Run'].tolist()

with open('data/metadata/PRJEB21612_sra_accessions.txt', 'w') as f:
    print(ACCESSIONS, file=f)
