---
name: apply
description: Tailor a resume to a job posting and log it. Use when the user pastes a job description or job URL, types /apply, or asks about application status ("what's pending", "applied to X", "rejected by X").
---

Follow the pipeline in `AGENTS.md` at the repo root. It is the single source of truth; do not improvise a different flow.

- `/apply <JD text or URL>` → run the full pipeline (parse → select deeds → write → compile → log to `applications.csv` → the final check: `bin/check.sh` on Linux/macOS, `bin\check.ps1` on Windows → commit and push).
- `/apply status` → summarize `applications.csv` by status and list follow-ups due today or earlier.
- `/apply <company> <status>` → update that row's status per the "Tracker updates" section of `AGENTS.md`.
