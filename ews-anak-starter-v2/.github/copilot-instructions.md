# GitHub Copilot Instructions

## Project
Build a single hospital module: **Lembar Observasi Early Warning Score (EWS) pada Anak** for Rumah Sakit Amal Sehat Slogohimo Wonogiri.

## Source of Truth
Read these first:
1. `docs/PRD.md`
2. `docs/FORM-EWS-REFERENCE.md`
3. `docs/references/Lembar-EWSANAK.pdf`

The PDF is the primary visual reference.

## Stack
- Native PHP
- MySQL/MariaDB
- PDO + prepared statements
- Vanilla JavaScript
- HTML5/CSS3
- Fetch API for PHP endpoints
- PHP sessions

Do not introduce Laravel, React, Vue, Angular, Node backend, Composer packages, npm/build tooling, or other unnecessary frameworks.

## Architecture
Browser -> Vanilla JS Fetch -> PHP API -> MySQL/MariaDB.
Never connect browser JavaScript directly to MySQL/MariaDB.

## Scope
Only implement:
No. Rawat login -> patient lookup -> session -> EWS child form -> realtime preview -> save/load/update -> print.

Do not add unrelated hospital modules.

## Medical/data safety
- Never invent medical thresholds.
- Never infer missing score rules.
- Preserve terminology and structure from the PDF.
- Mark uncertain scan text as TODO for manual verification.
- Server-side validation is mandatory.

## UI
- Light theme only.
- Clean, modern, professional hospital UI.
- Dense and efficient layout.
- Desktop split: 30% input / 70% document preview.
- Mobile/tablet: stack vertically while preserving document proportions.

## Print
- A4 portrait according to the reference.
- Exactly one printed page.
- No second blank page.
- No application controls in print.
- Keep preview and printed document visually consistent.

## Coding
- Keep code simple and readable for a student.
- Use clear names.
- Add short useful comments to important logic.
- Reuse existing files instead of duplicating logic.
- Do not modify working parts unnecessarily.
- Do not create unnecessary files.

## Workflow
Implement one phase at a time. Do not jump ahead.

Phase 1: analyze reference and establish static UI structure.
Phase 2: database + connection.
Phase 3: login + session + patient lookup.
Phase 4: EWS form + realtime preview.
Phase 5: save/load/update.
Phase 6: print one-page output.
Phase 7: testing + README.
