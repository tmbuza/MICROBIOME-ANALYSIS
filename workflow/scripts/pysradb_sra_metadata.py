import os
import sys
import csv
import pandas as pd

from pysradb.sraweb import SRAweb

db = SRAweb()
df = db.sra_metadata('PRJNA477349', detailed=True)
df.to_csv('data/metadata/PRJNA477349_pysradb_metadata.tsv', index=False)

db = SRAweb()
df = db.sra_metadata('PRJNA802976', detailed=True)
df.to_csv('data/metadata/PRJNA802976_pysradb_metadata.tsv', index=False)

db = SRAweb()
df = db.sra_metadata('PRJNA322554', detailed=True)
df.to_csv('data/metadata/PRJNA322554_pysradb_metadata.tsv', index=False)

db = SRAweb()
df = db.sra_metadata('PRJNA937707', detailed=True)
df.to_csv('data/metadata/PRJNA937707_pysradb_metadata.tsv', index=False)

db = SRAweb()
df = db.sra_metadata('PRJNA589182', detailed=True)
df.to_csv('data/metadata/PRJNA589182_pysradb_metadata.tsv', index=False)

