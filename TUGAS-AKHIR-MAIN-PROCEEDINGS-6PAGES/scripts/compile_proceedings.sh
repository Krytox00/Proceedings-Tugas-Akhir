#!/usr/bin/env bash
set -euo pipefail

# Run from the thesis root after Codex creates proceedings/main_proceedings.tex.
if ! command -v latexmk >/dev/null 2>&1; then
  echo "latexmk is not installed. Install latexmk or compile manually with pdflatex/bibtex."
  exit 1
fi

latexmk -pdf -interaction=nonstopmode proceedings/main_proceedings.tex

echo "Build complete. Check the generated PDF page count; it must be <= 6 pages."
