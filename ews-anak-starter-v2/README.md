# EWS Anak - Rumah Sakit Amal Sehat

Prototype native PHP for digitizing **Lembar Observasi Early Warning Score (EWS) pada Anak**.

## Required stack
- XAMPP or Laragon
- PHP 8+
- MySQL/MariaDB
- HeidiSQL for database management
- Vanilla HTML/CSS/JavaScript

## First setup
1. Put the project in the web server folder.
2. Create a MySQL/MariaDB database.
3. Import `database/database.sql` using HeidiSQL.
4. Configure `config/database.php` after that file is created.
5. Place the source PDF at `docs/references/Lembar-EWSANAK.pdf`.
6. Open the project via localhost.

## Copilot workflow
Use `NEXT-STEP-PROMPT.md` first. Implement one phase at a time.

## Important
The PDF is the source of truth for the EWS form layout and medical scoring. Unclear scan text must be verified with the hospital before production use.
