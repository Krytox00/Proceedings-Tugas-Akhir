# Codex Setup — Thesis Book Format to IEEE Proceedings, Indonesian, max 6 pages

This folder is designed to be copied into the root of your existing thesis project:

```text
TUGAS-AKHIR-main/
├─ main.tex
├─ abstrak/
├─ bab/
├─ gambar/
├─ pustaka/
├─ .codex/        ← from this setup
├─ .agents/       ← from this setup
├─ AGENTS.md      ← from this setup
└─ proceedings/   ← from this setup
```

## Goal

Use Codex to create an Indonesian IEEE conference proceedings version of the finished thesis. The output must summarize the thesis into a maximum of **6 IEEE two-column pages** while preserving the technical meaning, citations, figures, tables, and folder structure of the current LaTeX project.

## Source projects provided

- Current thesis/book LaTeX project: `TUGAS-AKHIR-main.zip`
- IEEE reference proceedings template: `IEEE-Proceedings-Format.zip`

Observed structure from the uploaded projects:

```text
TUGAS-AKHIR-main/
├─ main.tex
├─ pustaka/variables.tex
├─ pustaka/pustaka.bib
├─ abstrak/abstrak-id.tex
├─ abstrak/abstrak-en.tex
├─ bab/1-pendahuluan.tex
├─ bab/2-tinjauan-pustaka.tex
├─ bab/3-desain-implementasi.tex
├─ bab/4-pengujian-analisis.tex
├─ bab/5-penutup.tex
├─ bab/Metodologi/*.tex
├─ bab/Hasil_dan_pembahasan/*.tex
└─ gambar/*

IEEE-Proceedings-Format/
├─ IEEE-conference-template-062824/IEEE-conference-template-062824.tex
├─ IEEE-conference-template-062824/IEEEtran.cls
└─ IEEEtranBST2/IEEEtran.bst
```

## How to use with Codex

1. Copy this setup folder contents into the root of `TUGAS-AKHIR-main/`.
2. Copy `IEEEtran.cls` from the IEEE template folder into the thesis root, or keep it in a path Codex can reference.
3. Copy `IEEEtran.bst` from `IEEEtranBST2/` into the thesis root or keep bibliography style path valid.
4. Open Codex in the thesis root.
5. Paste the prompt from `.codex/CODEX_INDONESIAN_THESIS_TO_IEEE_6PAGES.md`.
6. Ask Codex to implement the paper using `proceedings/main_proceedings.tex` as the starting scaffold.
7. Compile with:

```bash
latexmk -pdf -interaction=nonstopmode proceedings/main_proceedings.tex
```

If SVG figures are used directly and compilation fails, either compile with `-shell-escape` or replace the SVG calls with the existing `*_svg-raw.pdf` files in `gambar/`.

## Recommended output files

Codex should create or update these files only:

```text
proceedings/main_proceedings.tex
proceedings/sections/00-abstract.tex
proceedings/sections/01-pendahuluan.tex
proceedings/sections/02-metodologi.tex
proceedings/sections/03-hasil-pembahasan.tex
proceedings/sections/04-kesimpulan.tex
```

The original thesis files under `bab/`, `abstrak/`, `pustaka/`, and `gambar/` should remain as source/reference files unless you explicitly ask Codex to edit them.
