# Routine: scout

Finds opportunities. Does not contact anyone.

## 1. Trigger
Cron: Monday 06:00 Eastern (weekly). Reads at start: `research/helen-lundstrom-erwin.md`,
`research/search-map.md`, `opportunities/*.md` (to avoid repeats), `crm/people.md`, `notes/guardrails.md`.

## 2. Inputs
- The search map's nine hunting grounds and the calendar of hooks.
- The last four opportunity files, to skip anything already listed.
- `notes/voice.md` once it exists, so the "why her" lines sound like her.

## 3. Steps
1. Deadlines first: search every award, conference, and call-for-proposals in the map for changes. Record deadlines inside 60 days.
2. Calendar hooks: list every hook inside 45 days with one concrete action each.
3. Rotate two hunting grounds per run (podcasts and reviewers one week, press and institutions the next, comps and communities the third). Find up to 20 candidates. Verify each: fetch its policy page, note last activity date, confirm indie-friendly.
4. Disqualify by the map's rules. Score the rest. Tag the lane.
5. Write the digest file. Append new people and organizations to `crm/people.md` as "prospect, untouched."
6. Never draft outreach here. That is the connect routine's job.

## 4. Output
`opportunities/<date>-scout.md`:
```
# Scout — 2026-11-02
## Deadlines inside 60 days
| What | Deadline | Fit | Lane | Action |
## Calendar hooks inside 45 days
## Top five new leads (scored)
| Lead | Fit | Reach | Warmth | Effort | Total | Lane | Why her | Link |
## Everything else found (unscored, for the record)
## Skipped and why
```

## 5. Guardrails
- Everything in `notes/guardrails.md`.
- Record only public information. No scraping of private groups.
- Every lead carries the URL it came from. No lead without a source.
- Do not re-list a lead already in the last four files unless its deadline or policy changed.
