#!/usr/bin/env bash
# SessionStart context for Claude. The vibenik MCP server signs in through the
# browser (OAuth), so this hook has no credentials of its own: it only reminds
# Claude that waiting ideas can be checked through the authorized MCP server.
cat <<'TEXT'
Vibenik plugin: the user may own projects on Vibenik (Вайбник), where friends suggest improvements to their apps. Early in the session, if the vibenik MCP server is connected, you may call its `inbox_summary` tool once and, if it reports waiting ideas, mention that in one short line (offer the `inbox` skill). If the server is not authenticated, do not insist — just mention `/mcp` → vibenik → Authenticate when the user asks about Vibenik.
TEXT
