# AGENTS.md — Codex Instructions for Indonesian IEEE Proceedings Conversion

## Primary role

You are a LaTeX proceedings conversion agent. Your task is to convert a finished Indonesian thesis from book format into an IEEE conference proceedings paper, while summarizing the thesis to a maximum of 6 pages.

## Critical output requirements

- Write the final proceedings article in **Indonesian academic language**.
- Keep technical terms common in English when appropriate, for example: `bulk-driven OTA`, `low-pass filter`, `post-layout`, `PEX`, `input-referred noise`, `PSRR`, `CMRR`, `dynamic range`, `THD`, `layout`, and `transconductance`.
- The user prompt may be in English, but the LaTeX paper content must be Indonesian.
- Maximum final PDF length: **6 pages** in IEEE two-column format.
- Do not invent new results, new citations, new measurements, or new claims.
- Summarization is allowed, but technical meaning must be preserved.
- Preserve existing figure/table files by referencing the existing `gambar/` folder.
- Preserve the existing bibliography file: `pustaka/pustaka.bib`.
- Prefer creating new proceedings files under `proceedings/` instead of editing the original thesis book files.

## Project structure to respect

Use the current thesis folder organization:

```text
main.tex                         # original book thesis main file; use as source only
pustaka/variables.tex             # thesis metadata
pustaka/pustaka.bib               # bibliography database
abstrak/abstrak-id.tex            # Indonesian thesis abstract
bab/1-pendahuluan.tex             # source introduction
bab/2-tinjauan-pustaka.tex        # source literature review
bab/3-desain-implementasi.tex     # source methodology wrapper
bab/Metodologi/*.tex              # detailed methodology source
bab/4-pengujian-analisis.tex      # source results wrapper
bab/Hasil_dan_pembahasan/*.tex    # detailed results/discussion source
gambar/*                          # source figures
```

## IEEE conversion rules

- Use `\documentclass[conference]{IEEEtran}`.
- Do not use `book`, `chapter`, title pages, dedication, approval pages, table of contents, list of figures, list of tables, appendices, or biography sections.
- Convert thesis chapter structure to IEEE paper structure:
  - `BAB I PENDAHULUAN` → `\section{Pendahuluan}`
  - `BAB II TINJAUAN PUSTAKA` → merged into `Pendahuluan` or short related-work paragraph
  - `BAB III METODOLOGI` → `\section{Metodologi}`
  - `BAB IV HASIL DAN PEMBAHASAN` → `\section{Hasil dan Pembahasan}`
  - `BAB V PENUTUP` → `\section{Kesimpulan}`
- Use IEEE-compatible citation style. Prefer `\cite{key}`. If keeping old thesis commands, define compatibility macros:

```latex
\providecommand{\citep}[1]{\cite{#1}}
\providecommand{\citet}[1]{\cite{#1}}
\providecommand{\parencite}[1]{\cite{#1}}
```

## Summarization rules

- Keep only the most important material needed for a 6-page paper.
- Remove thesis administration content: cover, approval sheets, originality statement, acknowledgments, table of contents, lists, appendices, author biography.
- Remove long textbook-style explanations unless needed to understand the method.
- Keep the problem motivation, novelty/design focus, method, key architecture, simulation setup, quantitative results, and conclusion.
- Use compact paragraphs and compact tables.
- Limit figures to the minimum needed to explain the contribution and validate the result.
- Avoid repeating the same result in paragraph, figure, and table unless it is central.

## Figure/table selection priority

Recommended maximum: 3–5 figures and 1–2 tables.

Recommended figures from `gambar/`:

1. `DiagramBlokBLPF.png` — architecture / filter block diagram.
2. `BulkDrivenOTA_Skematik_svg-raw.pdf` or `BulkDrivenOTA_Skematik.svg` — OTA schematic.
3. `lpf_pex_gain_response_svg-raw.pdf` — LPF frequency response.
4. `ecg_time_domain_filtered_comparison_svg-raw.pdf` — ECG time-domain comparison.
5. `ecg_pex_fft_spectrum_2na_svg-raw.pdf` or grouped DFT/STFT result if needed.

Recommended tables:

1. Compact design target/specification table.
2. Compact final PEX performance table.

## Quality rules

- Keep units consistent: V, nA, nW, Hz, dB, %, $\mu V_{\mathrm{rms}}$.
- Fix obvious Indonesian typos only when rewriting/summarizing, without changing meaning.
- Keep citation keys unchanged from `pustaka/pustaka.bib`.
- Every figure/table used must be cited in the text before or near placement.
- Use `figure*` or `table*` only when necessary. Prefer one-column floats to save space.
- Keep captions short and Indonesian.
- Do not use `[H]` floats in IEEE papers; use `[t]`, `[b]`, or `[!t]`.
- Avoid `longtable`, `titlesec`, `fancyhdr`, `geometry`, `setspace`, `pdfpages`, and thesis-only packages.

## Do-not-change list

Unless explicitly requested by the user, do not modify:

- Original `main.tex`
- Original source chapters in `bab/`
- Original abstract files in `abstrak/`
- Original bibliography in `pustaka/pustaka.bib`
- Original figures in `gambar/`

Create the proceedings version separately under `proceedings/`.
