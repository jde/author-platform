# Sessions

Short pieces of work, 10 to 15 minutes each. Pick any one that feels good today. The order inside each
group is a suggestion. Tick a session when done, with the date and one line on what changed.

Groups, roughly in order of how much they improve everything else:
- **Q** quick wins that make the first outreach possible
- **V** voice: make every draft sound exactly like her
- **C** connections: tools and accounts the agent needs
- **B** brackets: fill in what only she knows
- **S** send: approve and send real messages
- **R** routines: put the agent on a schedule

## Q. Quick wins

- [ ] **Q1. Read the bios (10 min).** Open `materials/bios.md`. Agent reads each bio aloud; Helen says keep, cut, or change. Add how she pronounces Lundström and her preferred headshot link.
- [ ] **Q2. The book blurbs (15 min).** `materials/books.md`. For each book, does the one-liner sound like her? Fill the buy links. Name the exact American Swedish Historical Museum quote.
- [ ] **Q3. Fix the website contact page (10 min).** It shows placeholder text ("Hi there, put greeting text here"). Agent drafts a two-line greeting; Helen pastes it in.
- [ ] **Q4. A newsletter signup (15 min).** Pick a free tool she likes (Buttondown, Substack, or her existing email provider). Agent drafts the signup blurb and the first welcome email. The biggest single gap found in research.
- [ ] **Q5. Talk topics (10 min).** `materials/talk-topics.md`. Star her three favorites. Strike any she would not enjoy talking about for an hour.
- [ ] **Q6. What she can see that the agent can't (15 min).** Follower counts on LinkedIn, Instagram, Facebook, X, YouTube; Amazon and IngramSpark numbers; ISBNs for James' Journey and the hedgehog book; whether a fourth book or audiobook is in progress. Agent records them in `research/helen-lundstrom-erwin.md`.

## V. Voice

- [ ] **V1. Gather samples (15 min).** Helen forwards or pastes 10 to 20 things she wrote herself: emails to colleagues, posts, Goodreads answers. Remove anything private. Agent saves them to `materials/voice-samples/` (gitignored if private).
- [ ] **V2. Extract her rules (10 min, agent mostly).** Agent reads the samples and rewrites `materials/voice.md` from what it finds. Helen reads the new "what she sounds like" list and corrects it.
- [ ] **V3. Build the voice skill (15 min).** Use the `anthropic-skills:skill-creator` skill to package voice.md plus eight annotated examples as a skill every drafting routine loads.
- [ ] **V4. Blind test (15 min).** Agent writes five short messages; Helen writes the same five (or uses ones she already sent). She guesses which are hers and marks any line that feels wrong. Each mark becomes a rule. Repeat monthly until she can't tell.

## C. Connections

Run these through the connect menu in `notes/menus.md`. Record each in `notes/connections.md`.

- [ ] **C1. A mailbox (15 min).** Decide: her own address, or a dedicated one for outreach. Connect it through the Google Workspace skill. Agent confirms it can read and create drafts, and only drafts.
- [ ] **C2. Bluesky (10 min).** Agent already reads her public posts. Decide whether it may prepare posts as drafts for her to publish. Follow the four feeds listed in `campaigns/opportunities/14-bluesky-feeds-and-hashtag-days.md`.
- [ ] **C3. Calendar (10 min).** Add the dated items from `campaigns/master-timeline.md` that she accepts to her real calendar, with reminders a week ahead.
- [ ] **C5. Newsletter key (10 min).** After Q4. Store the key in `.env`; agent drafts only.
- [ ] **C6. Website editor user (10 min).** A separate WordPress Editor account with an application password.
- [ ] **C7. Monthly reports (10 min, recurring).** Download KDP and IngramSpark reports into `private/reports/`; agent reads the trend.
- [ ] **C4. Reddit rules (10 min).** The agent cannot read Reddit. Helen opens r/HistoricalFiction, r/folklore and r/Fantasy_Bookclub, and pastes each sidebar's self-promotion rule. Agent records them in `research/search-map.md`.

## B. Brackets

About 97 bracketed notes live in `campaigns/`. Each session clears about ten. Agent lists them grouped by file; Helen answers out loud; agent fills them in and reruns `bin/style-check.sh`.

- [ ] **B1. Warm contacts, part 1 (15 min).** Christi Fenison, Tracy Nicholas, Dee Chainey, Susan Wands, Lisa J. Yarde.
- [ ] **B2. Warm contacts, part 2 (15 min).** Karen Alexander, Grace Beattie, Heather Ashley Shore, Dot Cannon, SWEA New York, Swedish American Museum.
- [ ] **B3. History checks (15 min).** Every `[Helen: verify ...]` item about historical facts: the roughly 300 executions, the Torsåker memorial, the 1676 recantation, the Svea court records. Confirm, correct, or cut.
- [ ] **B4. Podcasts (15 min).** Mark Norman, Icy Sedgwick, Daniel Farrand, Eric Stavney, Three Ravens. Mostly: which episode she listened to and what she noticed.
- [ ] **B5. Institutions (15 min).** Scandinavia House, Swenson Center, National Nordic Museum, American Swedish Institute, Nordstjernan. Agent first tries to find the missing contact emails itself.
- [ ] **B6. Witch-trial and folklore peers (15 min).** Josh Hutchinson, Kathryn Nuernberger, Beth Caruso, Greg Houle, Alexandra Beaumont, Louise Hauberg Lindgaard, Essex Witch Museum, Carterhaugh.

## S. Send

Only after C1 and the matching B session. At most three asks a week (no-ask touches don't count).

- [ ] **S1. Three warm reconnects (10 min).** Christi Fenison, Tracy Nicholas, Dee Chainey, touch 1 each. Helen approves; agent sends or she sends.
- [ ] **S2. Foremothers Day (15 min, before Nov 30).** Nordstjernan pitch, SWEA piece, Heather and Grace invitations.
- [ ] **S3. HNS NYC program proposal (10 min).** Her warmest door. `campaigns/opportunities/13-hns-nyc-chapter-program.md`.
- [ ] **S4. First podcast pitch (10 min).** Whichever podcast she enjoyed most in B4.
- [ ] **S5. Weekly send slot (10 min, recurring).** Agent shows what's due from the timeline; she approves up to three.

## R. Routines

- [ ] **R1. The Monday digest (15 min).** Schedule it with the `schedule` skill, following the fixed order in `notes/make-it-rewarding.md`. Run it once by hand first and let her react to the format.
- [ ] **R2. The scout (15 min).** Schedule `routines/scout.md` weekly. Run once by hand and compare with `opportunities/2026-10-21-first-pass.md`.
- [ ] **R3. Learn from her edits (10 min).** Each time she edits a draft before sending, agent saves the before and after to `materials/voice-edits/`. Monthly, fold the patterns into the voice skill.
- [ ] **R4. Quarterly map (15 min, every three months).** Then versus now: people who know her work, places her name appeared, conversations started. One page.

## Done
(Agent moves ticked sessions here with the date and one line.)
