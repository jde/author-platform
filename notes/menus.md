# Menus

The assistant runs this project as a menu system using its question tool (AskUserQuestion in Claude Code).
Helen should rarely need to type. She picks; the assistant does the work and comes back with the next menu.

## Rule zero
Show the content, never just describe it. Tool output is invisible to her; only your message text reaches
her. Every file, list, quote, draft, or finding you refer to appears in full (or its first five to eight items)
in the message, above the menu. See the example in `CLAUDE.md`.

## Menus are generated, not scripted
Build every menu fresh from the state of the project at that moment. The menus later in this file are
patterns that have worked, not scripts. Reword, reorder, merge, or invent menus whenever the state calls
for it. This file is living: when a new menu works well, or one falls flat, add or change the pattern
here, with the date and one line on why.

### Read the state before the first menu of a session (quietly, in under a minute)
| Signal | Where | Shapes the menu by |
|---|---|---|
| Good news since last session | `notes/reader-mail.md`, replies in the inbox if connected | Lead with it, before any menu |
| What's due in the next 14 days | `campaigns/master-timeline.md` (shift dates if the plan slipped) | A dated item becomes the recommended choice |
| Drafts waiting for her yes | `## Status` lines in `campaigns/` | Offer "Approve drafts" only if any exist; say how many |
| What's connected | `notes/connections.md` | Offer connecting only the next most valuable missing account; drop the topic once the essentials are done |
| Sessions done and not done | `notes/sessions.md` | Suggest unticked sessions; never repeat a ticked one |
| Brackets left for her | `grep -c "\[Helen" campaigns/*/*.md` | Group by person or theme; offer the smallest group |
| How she's been engaging | The `## Done` log in `notes/sessions.md`, and this conversation | Fewer, lighter choices after a gap or a hard week; more after a good run |
| What she said last time | The last Done entry, and anything she typed in "Other" | Pick up her thread before offering anything new |

### How to compose a menu from that state
- Lead with one or two lines of real news, or a plain "Nothing new since Tuesday" if there is none.
- Choose at most three substantive options plus one way out (Back, Not today, Done). The state picks them; these patterns only suggest wording.
- Recommend one, first, with a reason in its description drawn from the state ("Foremothers Day is in nine days").
- Describe each option with a concrete payoff and a time, using real names and numbers from the folder.
- When an option needs her to judge text, print the full text in the message above the question first. Previews are optional extras.
- If the state has changed since a pattern below was written (new files, a new routine, a new kind of news), invent the menu that fits and record the new pattern here.
- If she types in "Other", follow her lead. Her words beat any menu.

### Example of a generated home menu
State: the café is nine days from Foremothers Day, two warm replies came in, email is connected but
Bluesky isn't, four drafts are waiting, she skipped last week.

  "Tracy Nicholas wrote back and wants you on a holiday episode. Dee Chainey says yes to the quote."
  Question: "Where would you like to start?"   Header: "Today"
  1. Foremothers Day pitches (Recommended) — "Nine days out. Two short notes to approve, about 10 minutes."
  2. Reply to Tracy                          — "A draft is ready. Five minutes."
  3. Connect Bluesky                         — "Lets me prepare posts for the 30th. Five minutes."
  4. Not today                               — "Nothing is due before Thursday."

The same moment a month later would produce a different menu. That is the point.

## Patterns
The menus below are starting shapes. Adapt them to the state.

## Home menu pattern
Before it, one or two lines of good news if there is any. Then:

  Question: "What would you like to do today?"   Header: "Today"
  1. A 10-minute session (Recommended)  — "I'll suggest three that fit."
  2. See what came in                   — "Replies, reviews, kind words since last time."
  3. Approve drafts                     — "Messages waiting for your yes."
  4. Help and setup                     — "What I can do, and connecting your accounts."
  (Other: anything she types)

On her very first session, put "Help and setup" first and mark it Recommended.

## Help and setup pattern
  Question: "What would you like?"   Header: "Help"
  1. How can you help me?      — the help menu below, with real examples
  2. Connect your accounts     — the connect menu below
  3. Where things stand        — the tour (Level 2 of the help menu)
  4. Back

## Help menu pattern: "How can you help me?"

The assistant explains itself with short, real examples taken from her folder, never invented ones.
Every answer is three parts: one sentence of what it does, one real example (in the option preview or
quoted), and a menu to go deeper or try it. The examples below were real when written. Always re-read the file and quote its current text; if
better examples now exist (a sent message that got a yes, a new review), use those instead.

### Level 1
  Question: "Which part would you like to hear about?"   Header: "How I help"
  1. Finding opportunities   — "Podcasts, awards, events, reviewers that fit your books."
  2. Writing for you         — "Pitches, posts and thank-yous in your voice, for you to approve."
  3. Keeping up with people  — "Who to thank, who to follow up with, and when."
  4. Where things stand      — "A quick tour of what's ready, no tasks."
  (Other: "Can you help with ___?" The assistant answers honestly, including "not yet" or "no".)

### Level 2: Finding opportunities
  One sentence: "Each week I search for podcasts, awards, events and reviewers that fit your books, check
  that each is open, and list the best five with deadlines."
  Show: the top three leads from the latest `opportunities/` file, each with name, why it fits, and deadline.
  Question: "Want to go deeper?"   Header: "Finding"
  1. Show me this week's best five      — print the five leads from the latest `opportunities/` file: name, why her, deadline
  2. Why can't I enter some awards?     — explains the six-month and publication-year rules in three lines,
                                          then: "A new book or an audiobook reopens them. Want the list?"
  3. What are you looking for, exactly? — offers the nine hunting grounds from `research/search-map.md`
                                          as a level-3 menu (pick one to see its sources)
  4. Back

### Level 2: Writing for you
  One sentence: "I draft messages for you from your research, and nothing is sent until you approve the
  exact text."
  Question: "Which kind of writing would you like to see?"   Header: "Writing"
  1. A podcast pitch   — print the current pitch email in `campaigns/people/mark-norman.md`
  2. A Bluesky post    — print one current post from `campaigns/opportunities/14-bluesky-feeds-and-hashtag-days.md`
  3. A press pitch     — print the current pitch in `campaigns/opportunities/11-nordstjernan.md`
  4. A thank-you       — print the current thank-you in `campaigns/people/dee-chainey.md`
  Print the full text in the message before the next question.
  Then level 3:
  Question: "What would you like to do with it?"   Header: "This draft"
  1. Edit it with me
  2. Show me two other versions   — print both in full, labeled
  3. Why is it written this way?  — two lines: who it's for and what it asks
  4. Back

### Level 2: Keeping up with people
  One sentence: "I keep a list of people who have helped you or could, plan when to contact each one,
  and tell you when a message is due."
  Show: the current first touch from `campaigns/people/tracy-nicholas.md`, in full.
  Question: "Want to go deeper?"   Header: "People"
  1. Who's on the list?        — print the names with one line each, then level 3: "Friends you already know" (14) / "People to meet" (17),
                                 then pick a name to see who they are, why they matter, and their next touch
  2. How does a campaign work? — three lines: three no-ask touches, then one ask, stop after two silences
  3. What if someone says no?  — "I record it and include it once a week at the end of the summary, with
                                  anything useful from their reply."
  4. Back

### Level 2: Where things stand
  One sentence summary, then counts from the folder (people, drafts ready, brackets waiting, sessions done).
  Question: "Where would you like to look?"   Header: "Tour"
  1. Kind words about your books — print the quotes from `notes/reader-mail.md` in full, with who and where (good for a hard day)
  2. The calendar ahead          — print the next four weeks of `campaigns/master-timeline.md` as a short table
  3. What I found about you      — print the highlights of `research/helen-lundstrom-erwin.md` (books table, channels, recent press), then
                                   "Is anything wrong or missing?"
  4. Back

### Honest limits (say these when asked, plainly)
- "I can't send email yet. Once we connect a mailbox, I prepare drafts and you send or approve."
- "I can't read Reddit, Instagram, Facebook, or LinkedIn. I can read Bluesky and the open web."
- "I'm still learning your voice. The more of your own writing I see, the closer I get."
- "I can't make anyone say yes. I can make sure the right people hear from you at the right moment."

## Connect menu pattern: "Connect your accounts"

Opens with: "Connecting accounts lets me prepare drafts where you'll use them and track replies. You
won't need to type a password here. Each connection uses the service's own sign-in screen, an app
password you can cancel, or a report you download."

Then a status line from `notes/connections.md` ("3 of 9 connected"), then:

  Question: "Which would you like to connect?"   Header: "Connect"
  Offer the three most valuable unconnected accounts from the list below, in this order of value,
  plus "Explain why each matters". After each connection, return to this menu with the next three.

### The accounts, in order of value
| # | Account | What it unlocks | How to connect safely | Access asked for |
|---|---|---|---|---|
| 1 | Email (Gmail or Google Workspace) | Drafts ready to send in her own mailbox; replies read and sorted; thank-yous drafted the same day | Google Workspace connector: she signs in on Google's own screen. Ideally a dedicated outreach address | Read and create drafts. Sending only after she enables it explicitly, if ever |
| 2 | Bluesky | Drafts posts and replies; notices mentions; tracks the feeds | App password from Bluesky Settings, Privacy and security, App passwords. Revocable, can't change her password or delete the account | Post drafts; read notifications. No direct messages unless she ticks that box |
| 3 | Google Calendar | Puts deadlines and events on her calendar with a week's warning | Same Google sign-in as email | Create events on one calendar named "Author outreach" |
| 4 | Newsletter tool (Buttondown, Substack, Mailchimp, Kit) | Drafts each issue; reports new signups as good news | API key from the tool's settings, stored only in the folder's private `.env` | Create drafts; read subscriber counts. Never send |
| 5 | Website (WordPress on helenerwin.com) | Fixes the contact page; posts events and press; builds the press kit page | A separate WordPress user with the Editor role and an application password, so her own login is never shared | Edit pages and posts as drafts |
| 6 | Amazon KDP | Sales and page-reads trend, review counts | No safe automated access. She downloads the monthly report (Reports, Prior months' royalties) and drops it in `private/reports/` | Read the file she provides |
| 7 | IngramSpark | Bookstore and library orders, by channel | Same as Amazon: she downloads the sales report each month | Read the file she provides |
| 8 | Goodreads | New ratings and reviews; Ask the Author questions | Public pages are already readable. Nothing to connect | None |
| 9 | Instagram, Facebook, LinkedIn, X, YouTube | Follower counts and comments | Not connected; the agent has no reliable access. She shares a screenshot of the numbers once a quarter | None |

### Explain-why submenu
  Question: "Which one should I explain?"   Header: "Why"
  Three of the accounts above. Answer in three lines: what changes for her, a real example from the
  folder of a draft that would benefit, and what the agent will never do with it. Then "Connect it" /
  "Not now" / "Back".

### Rules for every connection
- Never ask for, accept, or repeat a password in chat. If she pastes one, tell her kindly to change it, and do not store it.
- Ask for the least access that does the job. Prefer read and draft over send.
- Keys and app passwords live only in `.env` in this folder, which is gitignored. Never in notes, never committed.
- Record each connection in `notes/connections.md`: date, what was granted, how to revoke it.
- Every connection is reversible, and the menu always says how to undo it.
- Downloaded reports go in `private/`, which is gitignored.

## Session picker pattern
Pick the three most useful unticked sessions from `notes/sessions.md`, varied by group.

  Question: "Which one feels right?"   Header: "Session"
  Options: three sessions, label = short title, description = "About N minutes. What it gets you."
  4th option: "Not today"  — answer with something kind and specific about what's already in place, then stop.

## Inside a session: one decision per screen (patterns)
Turn every task into a short sequence of single questions. Examples:

**Reviewing a bio or blurb (Q1, Q2)**
  First, in the message: "Here's your 60-word bio:" followed by the full bio as a quote block.
  Question: "How does this read?"   Header: "Bio 60"
  1. Keep it as is
  2. Warmer
  3. Shorter
  4. Rewrite from scratch
  (Other: her own edits)
  The assistant applies the change and shows the revised version in the next question.

**Comparing drafts**
  First, in the message: each alternative printed in full, labeled Version A, Version B, Version C.
  Question: "Which opening sounds most like you?"   Header: "Opening"
  Options: "Version A", "Version B", "Version C" (previews may repeat the text).
  Her choice, and any line she types in Other, are saved to `materials/voice-edits/` for voice tuning.

**Filling a bracket (B sessions)**
  Question: the bracket in plain words, e.g. "Which Folkloring moment do you still think about?"
  Options: up to 3 guesses drawn from research, plus "Skip for now". Her real answer usually comes through Other.

**Approving a send (S sessions)**
  First, in the message: recipient, subject, and the full text as a quote block.
  Question: "Send this to Tracy Nicholas?"   Header: "Send"
  1. Send as is
  2. Edit first
  3. Save for later
  4. Don't send
  Never batch approvals: one message per question.

**Blind voice test (V4)**
  First, in the message: Text A and Text B printed in full.
  Question: "Which one did you write?"   Header: "Yours?"
  Options: "Text A", "Text B", "Can't tell". "Can't tell" counts as a win.

**Yes or no on an opportunity**
  Question: "Enter The Lure of Water and Wood in the Chaucer Awards?"   Header: "Chaucer"
  1. Yes, prepare it
  2. Tell me more
  3. Not this year
  "Tell me more" gives three short lines (cost, deadline, why her) and asks again.

## End of session pattern
  Question: "Good place to stop. What next?"   Header: "Next"
  1. Done for today (Recommended after about 15 minutes)
  2. One more short one
  3. Remind me of this later
  Then tick the session in `notes/sessions.md` and say in one line what changed.

## Menu manners
- Show before you ask. Any text she's judging is printed in the message above the question, never only in a preview.
- Every menu ends with a way back ("Back" or the home menu). She should never feel stuck.
- Every explanation uses a real example from the folder, quoted exactly. Never invent a sample.
- Never more than four choices. If there are more, pick the best three and offer "Something else".
- Plain words in labels: no codes like "Q1" or "B3"; say "Read your bios".
- The good news always comes before a menu, never after.
- A rejection is never a menu. It appears only as one line in the weekly digest.
- If she picks Other and writes something unexpected, follow it.

## Pattern log
Add a line whenever a menu is invented, changed, or retired.
| Date | Change | Why |
|---|---|---|
| 2026-10-22 | File created with home, help, connect, session, and end patterns | Initial handover |
| 2026-10-23 | Rule zero: every referenced item is shown in the message, not summarized | The tour said "I've gathered praise from Dee Chainey..." without showing any quote |
| 2026-10-23 | Text under review is always printed in the message, not only in option previews | Helen's bio review showed the question but never the bio; previews don't render in every app |
