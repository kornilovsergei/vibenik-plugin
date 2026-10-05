#!/usr/bin/env bash
# Prints a one-line Vibenik inbox summary; SessionStart output becomes context
# for Claude. Silent when not configured, offline, or nothing is waiting.
token="${CLAUDE_PLUGIN_OPTION_TOKEN:-}"
url="${CLAUDE_PLUGIN_OPTION_URL:-http://localhost:3000}"
[ -z "$token" ] && exit 0
curl -sf -m 3 -H "Authorization: Bearer ${token}" "${url%/}/api/agent/inbox" 2>/dev/null || true
exit 0
