# Beamer Template EN

Minimal and customizable Beamer template, with a single entry point in `main.tex`.

## Setup

0. Open a terminal (linux: CTRL+ALT+T) and change directory to your project's
1. Clone this canva with
    ```bash
    git clone https://github.com/remi-moreau/latex-beamer
    ```
2. To generate the pdf, you need to have a latex compiler installed on your computer. Make sure `latexmk` is installed: type `which latexmk`. If you do not see a file location, you must install `latexmk`. With linux:
   ```bash
   sudo apt update
   sudo apt install -y latexmk
   ```
3. To manually generate the pdf based on `main.tex`, make sure you are in the directory of `main.tex` and type:
   ```bash
   latexmk -pdf -interaction=nonstopmode main.tex
   ```
4. To dispose of a convenient environment which compiles your project at each change and offers autocompletion, syntax highlights and all, you are advised to use VSCode along with the "Latex Workshop" extension. 
   
   **Important**: if you use the Latex Workshop extension, you should set its setting `"latex-workshop.latex.recipe.default"` to `"latexmk (latexmkrc)"`. 
   Otherwise, the autocompile functionality could ignore the `.latexmkrc` file and put all the build artefacts directly in the project root, which you probably want to avoid.

## Troubleshooting

If you encounter compilation problems with the Latex Workshop extension of VS Code:
* Delete the `build/` directory (and all its content);
* Reload your VSCode window (CTRL+Shift+P > Developer: Reload Window);
* Try to compile manually with `latexmk -pdf -interaction=nonstopmode main.tex`;
* If it compiled successfuly, reload your VSCode window again. The auto-compile functionality of Latex Workshop should work again.

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
