# START HERE - NEXT STEP FOR GITHUB COPILOT

Read the repository documentation before coding:
- `docs/PRD.md`
- `docs/FORM-EWS-REFERENCE.md`
- `docs/references/Lembar-EWSANAK.pdf`
- `.github/copilot-instructions.md`

The original PDF is the source of truth for the form layout.

## Task now: Phase 1 only

Do NOT build the complete application yet.
Do NOT create login, API, database logic, or print logic yet.

First, analyze the PDF and create the static UI foundation for the EWS child form only.

Deliver:
1. `ews-anak.php` as a static/mockup page.
2. `assets/css/ews.css` for the form layout.
3. If needed, small reusable include files only.

Requirements:
- Light professional hospital theme.
- Desktop split: left 30% input/control area, right 70% document preview.
- The right preview must reproduce the structure of the reference PDF: hospital header, patient box, title, observation table, score key, follow-up-care table, and footer.
- Use the exact visible labels from the reference.
- Do not invent missing medical rules.
- Use placeholders for data that will later come from the database.
- Match A4 portrait document proportions.
- Make the document preview visually close to the PDF.
- Keep code readable and commented.

At the end, report:
- files created;
- important assumptions;
- parts of the PDF that are unclear and need manual validation.

Do not proceed to Phase 2 until explicitly instructed.
