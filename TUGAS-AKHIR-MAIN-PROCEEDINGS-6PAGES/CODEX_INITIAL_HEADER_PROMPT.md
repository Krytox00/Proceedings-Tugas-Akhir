# CODEX_INITIAL_HEADER_PROMPT.md

Use this header at the beginning of every Codex request before asking for a specific LaTeX edit.

```md
Read `AGENTS.md`, `.codex/PROJECT_CONTEXT.md`, and the current LaTeX files first before editing.

You are helping me convert and format my finished Indonesian LaTeX thesis into an IEEE conference proceedings format.

My thesis content is written in Bahasa Indonesia, but my instruction/prompt may be written in English. When you report your work, explain it in Bahasa Indonesia.

Important project rule:
This is a formatting-only task. Do not rewrite, paraphrase, translate, summarize, shorten, expand, or modify the meaning of any paragraph. Keep all Indonesian text content exactly as much as possible.

Project structure to preserve:
- `main.tex` is the original thesis/book version. Do not overwrite it.
- `main-proceedings.tex` is the IEEE proceedings version.
- Keep using the existing folders:
  - `bab/`
  - `abstrak/`
  - `gambar/`
  - `pustaka/`
  - `lainnya/`
  - `sampul/`

General editing constraints:
1. Only change LaTeX formatting, document structure, package setup, figure/table layout, spacing, and compile-related syntax.
2. Do not change paragraph content.
3. Do not translate Indonesian text into English.
4. Do not change technical values, equations, labels, citation keys, captions, filenames, or references.
5. Do not remove figures, tables, equations, or bibliography entries unless they are duplicated by accident.
6. Do not edit image files directly.
7. Do not rename image files unless absolutely required for compilation, and explain it first in the report.
8. Prefer minimal edits that make the IEEE proceedings version compile cleanly.

For photo/figure layout adjustment:
- Keep every existing figure and caption.
- Keep each figure close to the paragraph where it is referenced.
- Use IEEE-compatible figure placement.
- For normal single-column figures, prefer:
  `\begin{figure}[!t]`
  `\centering`
  `\includegraphics[width=\columnwidth]{...}`
  `\caption{...}`
  `\label{...}`
  `\end{figure}`
- For wide figures that must span both columns, use:
  `\begin{figure*}[!t]`
  `\centering`
  `\includegraphics[width=\textwidth]{...}`
  `\caption{...}`
  `\label{...}`
  `\end{figure*}`
- Do not crop, replace, or visually alter the image content.
- Do not force all figures with `[H]`; use IEEE-style floating unless a compile/layout problem requires a careful exception.
- Make sure figures do not overflow the column width or page margins.
- If a figure is too large, adjust only LaTeX scale/width, not the image itself.
- If multiple related images are currently grouped, preserve their relationship. Use IEEE-compatible subfigure formatting only when needed for layout or compilation.
- Keep figure numbering, labels, and references working.

Compilation:
After editing, compile using:

```bash
latexmk -pdf -interaction=nonstopmode -shell-escape main-proceedings.tex
```

Fix only compile errors and formatting problems caused by the IEEE conversion. Do not use compile fixing as a reason to rewrite content.

After finishing, report in Bahasa Indonesia:
- file yang dibuat,
- file yang diubah,
- ringkasan perubahan format,
- status kompilasi,
- warning/error yang tersisa,
- bagian yang perlu saya cek manual.
```

## Usage example

Paste the header above first, then add your specific request below it, for example:

```md
Specific task:
I need to adjust the photo layout format in the IEEE proceedings version. Some figures are too wide, not centered, or appear too far from the related paragraph. Please fix only the LaTeX figure layout in `main-proceedings.tex` and related included chapter files. Do not change paragraph content, captions, labels, image files, or citation keys.
```
