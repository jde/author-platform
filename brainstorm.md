# Brainstorm

Audience: Dave, then the author. Rough and wide on purpose; the routines folder is where ideas get narrowed.

## What the system is

A small set of scheduled cloud routines. Each one wakes up, reads the author's files, does one job,
and leaves a short digest. The author reads the digest, approves or edits what she wants sent, and
the next routine sends it. Plain files are the database. No dashboard until the files hurt.

```
schedule → routine runs → reads notes/ + crm/ → does one job → writes a digest → author acts
```

## Job 1 — Find opportunities

Places where readers of her kind of book already gather, and moments she can plug into.

- **Reviewers and bloggers** — book bloggers, BookTok and Bookstagram accounts, Goodreads reviewers, Substack newsletters in her genre. Find the ones who review small-press and indie titles.
- **Podcasts** — genre podcasts, writing-craft podcasts, local-interest shows. Pull recent episodes and note which hosts interview authors at her level.
- **Awards and lists** — indie and small-press awards, genre awards, "best of the year" lists with open submissions. Track deadlines.
- **Events** — book festivals, library author series, bookstore readings, conventions, writing conferences. Find calls for panelists.
- **Communities** — Reddit genre subs, Discord servers, Facebook groups, forums where readers ask for recommendations. Note the rules on self-promotion in each.
- **Calls for submissions** — anthologies, magazines, guest posts, newsletter takeovers. A short story or essay in the right place reaches new readers.
- **Comparable authors** — authors one or two steps ahead of her. Where do they appear? Who blurbs them? Who interviews them? That map is her roadmap.
- **Libraries and bookstores** — independent bookstores and library systems that stock indie titles or host local authors.
- **Timely hooks** — anniversaries, news, seasons, themed months that connect to her books' subjects.

Routine: `routines/scout.md`. Daily or every few days. Output: new opportunities appended to a file with a score, a deadline, and a one-line "why her".

## Job 2 — Build presence

Show up as a contributor first, promoter rarely.

- **Draft, do not post** — for each community, the routine drafts replies to threads where she can genuinely help (recommendations, craft answers, local knowledge). She posts the ones she likes.
- **A standing content calendar** — one newsletter issue, a few social posts, one longer piece a month. The routine drafts from her notes and past writing, in her voice, from samples she provides.
- **Review-request kits** — for each reviewer found by the scout, a short personalized pitch, the book that fits them best, and the link or file to send.
- **Pitch kits** — one-page press kit, podcast one-sheet, panel bio, three suggested talk topics. Built once, refreshed as needed.
- **Reader magnet** — a free short story or first chapter in exchange for a newsletter signup. The routine watches signups and suggests the next welcome email.
- **Listening** — alerts when someone mentions her name, her books, or her comparable authors. Reply drafts when a reply would help.
- **Voice file** — a document describing how she writes online, with examples. Every draft is checked against it before it reaches her.

Routine: `routines/show-up.md`. Weekly. Output: a batch of drafts in a folder, each tagged with where it goes and why.

## Job 3 — Make connections

People, not platforms. A small list, worked patiently.

- **A simple CRM in files** — one file per person: who they are, why they matter, every touch, the next step, and a date to follow up. Reviewers, podcast hosts, booksellers, librarians, fellow authors, editors, agents, event organizers.
- **Warm before asking** — the routine suggests three no-ask touches before any request: a thoughtful comment on their work, sharing something of theirs, a short note of thanks.
- **Follow-up discipline** — the routine surfaces every contact whose follow-up date has passed and drafts the follow-up.
- **Introductions** — notice when two people in the CRM should know each other, and draft the intro.
- **Fellow authors first** — authors at her level trade newsletter mentions, joint events, and shared readers. This is the cheapest and most durable growth.
- **Gratitude loop** — when a review, mention, or invite lands, the routine drafts a thank-you the same day.
- **Agents and editors, slowly** — track who represents or edits comparable authors. Build the file for a year before the query goes out.

Routine: `routines/connect.md`. Weekly. Output: a follow-up list, warm-touch suggestions, and drafted messages awaiting approval.

## The weekly digest

One message, one place (email or a Slack channel), every Monday:

1. New opportunities this week, top five, with deadlines.
2. Drafts waiting for her approval, with one-line summaries.
3. People to follow up with, with the drafted message.
4. What went out last week and any replies.
5. One number that matters this month (signups, reviews, or replies).

Routine: `routines/digest.md`.

## Monthly review

Looks at the whole month: what got sent, what got replies, which places produced readers, which did
not. Proposes dropping two things and adding one. Routine: `routines/review.md`.

## Tools the routines need

| Need | Likely tool | Status |
|---|---|---|
| Scheduled runs | Claude Code cloud routines on a cron | Available (`/schedule`) |
| Web research | Web search and fetch | Available |
| Send and read email | Gmail through the Google Workspace connector | Needs the author's account connected, or a dedicated mailbox |
| Digest delivery | Email, or a private Slack channel | Pick one |
| Social listening | Platform search pages, Google Alerts into the mailbox | Low-tech first |
| Posting | Never automated at first. She posts. | By design |
| Newsletter | Whatever she uses (Substack, Mailchimp, ConvertKit) | Read-only at first |
| Storage | This repo. `crm/`, `opportunities/`, `drafts/`, `sent/` | Create when the first routine runs |

## What to build first

1. The voice file and the author profile (genre, books, comps, where she already is). Nothing works without them.
2. The scout routine, run by hand three times, tuned until its top five are actually good.
3. The weekly digest, by email, so she sees value before she has to do anything.
4. The CRM and the connect routine.
5. The show-up drafts, once the voice file has proven itself.

## What we guard against

- Drafts that sound like an agent. The voice file and her edits are the only fix.
- Self-promotion in communities that forbid it. Every community file carries its rules.
- Sending anything without her approval. See `notes/guardrails.md`.
- Too many opportunities. Five good ones a week beats fifty.
- Measuring followers instead of conversations and readers.
