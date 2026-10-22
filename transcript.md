# Transcript

Verbatim prompts that produced this folder, with interpretation flags.

## 2026-10-21 — Dave, in a cc-server session

> Start a new folder under jde. I'm trying to help an author who has 3 self-published novels, or
> novels published through a small imprint, gain a following to advance her career. Please help me
> brainstorm ways in which I can set up a agentic workflow that runs on a schedule and uses
> communication tools to help her identify opportunities, gain a presence in those places, and
> create good connections with people that can help in her journey.

### Where the plan interprets beyond these words

| Interpretation | Why it was made | Easy to change? |
|---|---|---|
| Folder is its own git repo named `author-platform` | Every sibling under `jde/` is its own repo; the jde root tracks only `ops/` | Yes, rename or fold in |
| "Communication tools" assumed to be email, Slack, and the author's social accounts | Nothing in the prompt names a tool; these are what the sibling projects already use | Yes, see open questions |
| The author approves every outbound message | Not stated. Chosen because outreach in someone's name is irreversible | Yes, but the default is deliberate |
| Three jobs map to three routine families (scout, show up, connect) | Direct reading of "identify opportunities, gain a presence, create connections" | Yes |
| Cadence guesses (daily scout, weekly digest, monthly review) | Not stated; starting points to tune | Yes |

## 2026-10-21 — Dave, same session

> Her name is Helen Lundstrom Erwin. Please find as much as you can.

> She uses Ingram Spark as her distributed and Amazon as her self publishing platform. The imprint is Powersimple. Can you find her work?

Interpretation: "find her work" taken as "confirm the books and where they are listed," which the research file does. No further interpretation.

## 2026-10-21 — Dave, same session

> Ok. Keep digging deeper. Map out a rich set of things the agent will look for and start the first information gathering effort.

Interpretation: "things the agent will look for" became `research/search-map.md` (nine hunting grounds, filters, scoring, cadence, calendar). "First information gathering effort" became a hand-run scout pass, `opportunities/2026-10-21-first-pass.md`, plus the seed `crm/people.md`. The two-lane split (evergreen versus new-release) is my framing, drawn from the eligibility rules found; Dave did not ask for it.

## 2026-10-21 — Dave, same session

> For each of these opportunities please draft a plan, timeline and the first draft of all materials. Compile lists of contacts and submission mechanisms and draft content for each. For people, draft a multi touch campaign for each custom.

> Do you have access to an email address?

> What else can you do to help her. It is very taxing to engage this space and rejection is painful. How can you not only help reduce the negative but make this process extremely rewarding?

Interpretation: the third prompt became `notes/make-it-rewarding.md`, a fixed digest order, and `notes/reader-mail.md`. "Count what compounds, never followers" and "drafts wait for her" are my design choices in response to the prompt, not Dave's words.

## 2026-10-22 — Dave, same session

> I'm close to handing this project over. Please create notes for the LLM accessing this folder to lead the user through the things that need to be done. No hard pressure, but provide 10-15 minute chunks of work that will make this agent more profound for the agent use cases.

Interpretation: became `CLAUDE.md` (operating instructions for the next model) and `notes/sessions.md` (28 sessions in six groups). Grouping and order are my choice.

## 2026-10-22 — Dave, same session

> Are you able to craft a lot of the interaction using the question tool? It may be nice if you act a lot like a meaning system.

> Menuing not meaning

Interpretation confirmed by Dave: a menu system. Became `notes/menus.md` and a "Run it as a menu system" section in `CLAUDE.md`.

## 2026-10-22 — Dave, same session

> Make sure to provide options such as "explain how you can help me" and provide clear, concise examples of what you can do (with real examples you've already generated) and potentially deeper menus where she can ask more specific details.

Became the "Help menu" section in `notes/menus.md`: three levels deep, each step quoting real drafts from the folder, plus an honest-limits list.

## 2026-10-22 — Dave, same session

> One of the option menus should be them providing the logins/permissions for all the things you think would be fruitful.

Became the connect menu in `notes/menus.md`, `notes/connections.md`, three new C sessions, and a guardrail. Interpretation: "logins" implemented as sign-in screens, app passwords, and report exports, never raw passwords in chat; that safety choice is mine.

## 2026-10-22 — Dave, same session

> If possible, these shouldn't be rigid scripted menus. It would be good if you generated them from the state of the project. Maintaining menu files is a good idea though, so long as they are fluid.

`notes/menus.md` now opens with "Menus are generated, not scripted": a state table the assistant reads each session, composition rules, a worked example, the old menus relabeled as patterns, and a pattern log for keeping the file current.

## 2026-10-23 — Dave, same session

> There is copious use of ai-isms such as quirky three hours sentences and leading statements without any substance. Im not sure if you can understand this but this writing style turns off humans immediately. It doesn't convey information well and screams that a manipulative ai is trying to sell Them something.
>
> Can you write in a clear and concise human style?

`materials/voice.md` replaced with a plain-writing standard and a banned-patterns table; `bin/style-check.sh` extended; all drafts, bios, book copy and talk topics rewritten; a chat-voice rule added to `CLAUDE.md`. The rewrite also found drafts describing *The Lure of Water and Wood* as being about the 1668 to 1676 witch hunt; corrected to the sorcery trials of the 1600s and 1700s.
