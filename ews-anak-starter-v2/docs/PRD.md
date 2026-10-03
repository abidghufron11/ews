# PRD - EWS Anak

## Product
Digital form for **Lembar Observasi Early Warning Score (EWS) pada Anak** at Rumah Sakit Amal Sehat Slogohimo Wonogiri.

## Core flow
No. Rawat (6 digits) -> patient lookup -> PHP session -> EWS form -> realtime preview -> save/load/update -> print one A4 page.

## Login
- No. Rawat only.
- Exactly 6 numeric digits.
- Must exist in patient/registration data.
- Invalid number must be rejected.
- Successful access must create a PHP session.

## Automatic identity
After login, patient identity comes from database. The form must also show staff and responsible doctor from database. Do not require manual typing of these identities on the EWS form.

## UI
- Light theme.
- Professional hospital design.
- Desktop: input 30%, preview 70%.
- Mobile/tablet: vertical stacking.

## Form reference
See `docs/FORM-EWS-REFERENCE.md` and `docs/references/Lembar-EWSANAK.pdf`.

## Data
Use MySQL/MariaDB. HeidiSQL is the database client, not the database engine.

## Security
Use PHP sessions, server-side validation, prepared statements, output escaping, and never expose database credentials to browser JavaScript.

## Print
- A4 portrait.
- Exactly one page.
- No blank second page.
- No excessive whitespace.
- No application UI in print.
- Preview and print should stay visually consistent.

## Out of scope
No admin portal, billing, pharmacy, registration module, or unrelated hospital features.

## Acceptance criteria
- Login works by valid 6-digit No. Rawat.
- Patient data loads automatically.
- Staff and doctor display automatically.
- EWS form follows the PDF.
- Preview updates without full-page reload.
- Data can be saved and loaded.
- Print is one A4 portrait page.
