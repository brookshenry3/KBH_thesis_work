#!/usr/bin/env python3

#Need to activate pysam venv w/ "conda activate pysam-venv" before running this script

import argparse
import pandas as pd
from Bio import SeqIO

def main ():

    parser = argparse.ArgumentParser(description='Find circular DNA sequences from Flye assembly info')

    required = parser.add_argument_group(
        'Required',
        'assembly_info.txt file, contigs.fasta file, & output location')

    required.add_argument(
        '-a',
        '--assembly',
        type=str,
        help='assembly_info.txt file generated by Flye')

    required.add_argument(
        '-c',
        '--contig',
        type=str,
        help='contigs.fasta file generated by Flye (From 30-contigger step)')

    required.add_argument(
        '-o',
        '--output',
        type=str,
        help='output dir/prefix')

    args = parser.parse_args()

    '''
    1. Parse assembly_info.txt file for circular DNA contigs
    '''

    contigs = pd.read_csv(args.assembly, sep = '\t')

    contigs = contigs[contigs["circ."] == 'Y']

    #print(contigs.head())

    contigs.to_csv(args.output + "_circ_contigs.tsv", index=False, sep='\t') 

    circ_contigs = contigs["#seq_name"].to_list()

    #print(type(circ_contigs))

    print('Number of circular contigs:' + str(len(circ_contigs)))

    '''
    2. Read in contigs.fasta file, filter, and save new fasta file
    '''

    count = 0
    
    with open(args.contig, 'r') as fin:
        with open(args.output + '_circ_contigs.fasta', 'w') as fout:
            for record in SeqIO.parse(fin, 'fasta'):
                if record.id in circ_contigs:
                    count += 1
                #print(record.id)    
                #with open(args.output + '_circ_contigs.fasta', 'w') as fout:
                    fout.write(">" + record.id + "\n")
                    fout.write(str(record.seq) + "\n")

    #fin.close()
    #fout.close()
    print('Number of fasta sequences found:' + str(count))

    
if __name__ == '__main__':
    main()
    