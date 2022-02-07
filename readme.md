# MSSQL-CLI Export Tool

## Purpose
Listens for changes in SQL Scripts, runs them against a DB, exports additions to an Emacs org-mode file, and compiles the org file into an HTML view.

## Prerequisites
- MSSQL-CLI
- Emacs
  - org-mode (org-html-export-to-html)
- entr
- POSIX shell