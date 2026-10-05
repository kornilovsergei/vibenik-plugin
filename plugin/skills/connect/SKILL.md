---
name: connect
description: Connect the current project to Vibenik (Вайбник) and add the «+вайбик» button so the app's users can suggest improvements. Use when the user says "подключи проект к Вайбнику", "connect this to Vibenik", "добавь кнопку +вайбик", "опубликуй проект в Вайбнике", or wants friends/users to send ideas for their app.
---

# Connect a project to Vibenik

Vibenik lets people who use a small app suggest improvements to its owner. You act for the **owner**. Use the `vibenik` MCP tools.

1. **Check the connection.** Call `whoami`. If the vibenik server is not authenticated, tell the user to type `/mcp`, choose **vibenik** and press **Authenticate** — a browser opens, they sign in to Vibenik and press «Разрешить». Then continue.
2. **Is it already connected?** Search for the project (`search_projects` with its name) and check `get_inbox`. If the user already owns it, you will update it instead of creating a duplicate.
3. **Draft the card** from the codebase (README, manifest, main screens):
   - `name` — short; `tagline` — one line, ≤160 chars;
   - `description` — markdown in the user's language (usually Russian): what the app does, who it is for, current state, what's planned, which ideas are welcome and what's out of scope.
   - Never include secrets, keys, internal URLs, personal or health data.
4. **Show the draft and ask** for approval, plus: public (in the catalog) or unlisted (link only)? the public app URL? the repo URL if the code is open?
5. Only after approval: `create_project` (or `update_project`).
6. **Add the button.** Call `get_widget_snippet` with the slug.
   - Web app: add the script tag before `</body>` in the root layout/template so it is on every page.
   - Native or other: add a menu/settings item «Предложить улучшение» that opens the `native` URL in the browser with the current screen name.
   - Change nothing else. Show the diff.
7. Give the user the project page link to share with friends.
