# Codex Prompt — Convert Indonesian Thesis to IEEE Proceedings, max 6 pages

Copy this whole prompt into Codex from the root of `TUGAS-AKHIR-main/`.

```text
You are working in my LaTeX thesis project. My thesis is finished and written in Indonesian. I need you to convert it from a book-style thesis into an IEEE conference proceedings paper using LaTeX.

Source thesis project:
- main thesis file: main.tex
- thesis metadata: pustaka/variables.tex
- source abstract: abstrak/abstrak-id.tex
- source chapters: bab/*.tex and bab/*/*.tex
- source figures: gambar/
- source bibliography: pustaka/pustaka.bib

IEEE reference template:
- Use IEEEtran conference format from the provided IEEE proceedings template.
- Use \documentclass[conference]{IEEEtran}.
- Use the IEEE bibliography style with the existing BibTeX database.

Main task:
Create an Indonesian IEEE proceedings version of my thesis with a maximum length of 6 pages. This is not a direct copy-paste conversion. You must summarize the thesis content while preserving all technical facts, numerical results, citations, figure references, and meaning.

Important constraints:
- Final paper content must be in Indonesian academic language.
- My prompt is in English, but the paper must be written in Indonesian.
- Do not invent new results, claims, citations, or figures.
- Do not change the original thesis files unless absolutely necessary.
- Prefer creating/updating files under proceedings/.
- Keep using the existing folder structure, especially gambar/ and pustaka/.
- Use existing figures only; do not create new figures.
- Convert thesis-style \chapter commands into IEEE \section structure.
- Remove thesis-only parts: cover pages, approval sheets, originality statement, acknowledgments, table of contents, list of figures, list of tables, appendices, and author biography.
- Keep the final PDF within 6 pages. If it exceeds 6 pages, reduce text first, then reduce figures/tables.

Use this final paper structure:
- Title
- Author block
- Abstract / Abstrak
- Keywords / Kata Kunci
- I. Pendahuluan
- II. Metodologi
- III. Hasil dan Pembahasan
- IV. Kesimpulan
- References / Daftar Pustaka

Conversion map:
- abstrak/abstrak-id.tex -> compact IEEE abstract, 150--200 words
- bab/1-pendahuluan.tex -> Pendahuluan
- bab/2-tinjauan-pustaka.tex -> short related-work paragraph inside Pendahuluan
- bab/3-desain-implementasi.tex and bab/Metodologi/*.tex -> Metodologi
- bab/4-pengujian-analisis.tex and bab/Hasil_dan_pembahasan/*.tex -> Hasil dan Pembahasan
- bab/5-penutup.tex -> Kesimpulan
- pustaka/pustaka.bib -> bibliography database
- gambar/ -> figure source folder

Important technical facts to preserve if present in the source thesis:
- Topic: low-power second-order biquad low-pass filter for ECG/EKG noise reduction.
- Topology: CMOS bulk-driven OTA-C / Gm-C filter.
- Supply: 0.5 V.
- Bias tuning: nA-level bias current, especially around 1 nA to 5 nA.
- Target cutoff: around 150 Hz.
- ECG bandwidth: around 0.5 Hz to 250 Hz.
- Evaluation: post-layout PEX simulation, PVT variation, ECG time/frequency-domain filtering.
- Final PEX power consumption: 5.17 nW to 16.82 nW.
- Input-referred noise: 130.92 µV_rms.
- THD: 0.37% typical, target maximum 1%.
- Cutoff range: 35.65 Hz to 214.17 Hz; typical 157.80 Hz.
- CMRR: 75 dB.
- PSRR: 62.6 dB.
- SNR: 38.17 dB.
- Dynamic range: 56.54 dB.
- Pearson correlation for filtered ECG: around r = 0.9844.
- Noise attenuation: 17.93 dB in the reported filtered condition.
- Discuss limitation: FS PVT corner sensitivity caused by imbalance under subthreshold ultra-low-current operation.
- Future work: constant-gm/current reference bias circuit for PVT robustness and possible linearity improvement.

Recommended figure selection, maximum 3--5 figures:
1. gambar/DiagramBlokBLPF.png
2. gambar/BulkDrivenOTA_Skematik_svg-raw.pdf or gambar/BulkDrivenOTA_Skematik.svg
3. gambar/lpf_pex_gain_response_svg-raw.pdf
4. gambar/ecg_time_domain_filtered_comparison_svg-raw.pdf
5. optional: gambar/ecg_pex_fft_spectrum_2na_svg-raw.pdf or input_noise_pex_density_svg-raw.pdf

Recommended tables, maximum 1--2 tables:
1. compact design target table
2. compact final PEX performance table

LaTeX rules:
- Use IEEEtran conference format.
- Prefer \cite{key}. If old thesis \citep or \citet commands remain, add compatibility macros.
- Do not use \chapter, \tableofcontents, \listoffigures, \listoftables, \appendix, \includepdf, or thesis cover files.
- Avoid [H] floats. Use [!t], [t], or [b].
- Prefer existing *_svg-raw.pdf figure files to avoid SVG shell-escape problems.
- Use \includegraphics[width=\linewidth]{...} for one-column figures.
- Keep captions short and in Indonesian.

Expected files to create/update:
1. proceedings/main_proceedings.tex
2. proceedings/sections/00-abstract.tex
3. proceedings/sections/01-pendahuluan.tex
4. proceedings/sections/02-metodologi.tex
5. proceedings/sections/03-hasil-pembahasan.tex
6. proceedings/sections/04-kesimpulan.tex

Before editing, inspect the source files and determine which figures and tables are necessary for a compact 6-page version. Then implement the LaTeX proceedings files and compile/check for syntax errors. Report the files created/edited and whether the final PDF is within 6 pages.
```
