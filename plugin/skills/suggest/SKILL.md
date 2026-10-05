---
name: suggest
description: Suggest an improvement («+вайбик») to a friend's app on Vibenik (Вайбник), or vote for an existing idea. Use when the user says "предложи идею в приложение Маши", "кинь +вайбик", "хочу, чтобы в трекере была фича X", "suggest a feature to <app> on Vibenik", or asks what friends are building.
---

# Suggest an idea to someone's app

You act for the **contributor**. Use the `vibenik` MCP tools.

1. Find the app: `search_projects` by what it does or the owner's name; then `get_project` to read its description and existing ideas.
2. If a similar idea already exists, offer to `vote` for it instead of duplicating.
3. Otherwise turn the wish into a clear idea:
   - `title` — short, ≤140 chars;
   - `body` — the problem, the proposed change, why it helps; respect what the description says is out of scope;
   - `screen` — where in the app, if known.
4. Show it to the user, then `submit_proposal`. Share the returned link so they can follow the discussion. `my_proposals` shows the status of everything they suggested.
