# CRISPR barcoded bone metastasis analysis

Code in this repository is used to reproduce the CRISPR barcoding analysis in manuscript: **The bone microenvironment invigorates metastatic seeds for further dissemination.**

## Files description

The CRISPR barcoding analysis first uses [traceQC](https://github.com/LiuzLab/TraceQC/) package for quality control and data processing. Running the code in file ```run_traceqc.R``` outputs quality control report and aligned sequence.

Use ```get_mutation_table.R``` to calculate the mutation count matrix.

Use ```NMF.Rmd``` to perform the NMF analysis.

