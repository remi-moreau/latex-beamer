# Beamer Template EN

Minimal and customizable Beamer template, with a single entry point in `main.tex`.

## Structure

- `main.tex`: presentation orchestration (sections enabled or disabled).
- `theme/`: metadata, colors, typography, layout, macros.
- `sections/`: slide content, one file per part.
- `assets/`: logos and figures.
- `utils/`: kept as-is.
- `build/`: PDF build output and auxiliary files.

## Quick customization

1. Edit metadata in `theme/metadata.tex`.
2. Adjust the palette in `theme/colors.tex`.
3. Enable/disable parts in `main.tex` using `\ifshow...` toggles.

## Bibliography

To include a bibliography in your presentation:

1. Add your references to `references.bib` (in BibTeX format).
2. Uncomment the line `% \input{sections/99_bibliography}` in `main.tex`.
3. Cite references in your slides using `\cite{key}` or `\autocite{key}`.

To compile with bibliography:

```bash
latexmk -pdf -interaction=nonstopmode -outdir=build main.tex
```

(Requires `biber` to be installed)

## Compilation

Recommended command:

```bash
latexmk -pdf -interaction=nonstopmode -outdir=build main.tex
```

Alternative:

```bash
pdflatex -interaction=nonstopmode -output-directory=build main.tex
pdflatex -interaction=nonstopmode -output-directory=build main.tex
```
