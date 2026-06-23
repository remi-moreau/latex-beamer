# =======================================
# Project-local latexmk configuration
# =======================================

# PDF generation via pdflatex
$pdf_mode = 1;

# All output and auxiliary files in build/
#$out_dir = 'build';
$aux_dir = 'build';

# Use biber (not bibtex) for biblatex
$biber = 'biber %O %S';
