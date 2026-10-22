# Routines

One file per scheduled routine. Each file has the same five sections:

1. **Trigger** — the cron schedule and what it reads at start.
2. **Inputs** — the files it depends on.
3. **Steps** — what it does, in order, with the web, the files, and the tools.
4. **Output** — the file or message it leaves, with an example.
5. **Guardrails** — what it must not do (always includes `notes/guardrails.md`).

Written: `scout.md` (weekly). Planned:, `show-up.md` (weekly), `connect.md` (weekly), `digest.md` (Monday), `review.md` (monthly).
Each is written only after `notes/open-questions.md` is answered.
