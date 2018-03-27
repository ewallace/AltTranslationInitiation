---
title: "README for AltTranslationInitiation Repository"
author: Edward Wallace & Amina Souag
output: html
---

This repository is for Alternate translation initiation work in fungi. 
It uses Biopython, running in jupyter notebooks, to quantify relevant sequence features

    - ATG position and frame in a list of sequences (CDS)
    - motif scores in a list of sequences

/Sequences - contains input sequences on which to run

/Output - contains output tables

get_pos.ipynb - get_pos_frame, output_pos_frame, and calc_norm_score.

# Notes

Uses nbdime to make git play nicely with python notebooks: http://nbdime.readthedocs.io/en/stable/vcs.html
install it with:
    pip install nbdime

details are in the .gitattributes config file

# To-do

    - run output_pos_frame on other CDSs beyond H99
    - make figures to compare ATG usage between genes
    - compare to non-ATG codons
    - write output_motif_score to run calc_norm_score on a fasta file of sequences
    - run output_motif_score on CDSs
    - run output_motif_score on Crypto 5' UTRs (requires fasta file of the UTRs)