---
name: inbox
description: Review ideas users sent to the owner's Vibenik (Вайбник) projects — answer authors, set statuses, and build accepted ideas in this codebase. Use when the user says "разбери идеи", "что мне предложили", "проверь Вайбник", "review my Vibenik inbox", "сделай принятые идеи", or when the session-start note says ideas are waiting.
---

# Review the Vibenik inbox

You act for the **owner**. Use the `vibenik` MCP tools. Ideas come from real people — be kind and concrete.

1. `get_inbox` (optionally with the project slug). Present a short list: ideas that need a reply first, then accepted ones (ready to build), then the rest. Mention votes (▲) — they show how many people want it.
2. For an idea that needs a reply, read it with `get_proposal` (text, screen, screenshot URL, thread). Propose an answer or a clarifying question. Send with `reply` only after the owner agrees, unless they told you to answer on their behalf. Replies are marked «через агента».
3. Suggest a status for each idea and apply `set_status` when the owner confirms:
   - `accepted` — will do; `declined` — with a kind, short reason in `note`; `discussing` — needs more input.
4. **Building an accepted idea** in this codebase:
   - `set_status` → `in_progress`;
   - restate the idea as a mini-spec with acceptance criteria and confirm it with the owner;
   - implement and verify it;
   - `set_status` → `shipped` with a one-line `note` of what changed. The author gets an email and the idea appears in the public feed.
