#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
U=Codepocketdev
rev=$(gh search prs --owner cashubtc --reviewed-by "$U" --limit 200 --json repository,number,title,state,author,url,updatedAt | jq --arg u "$U" '[.[] | select(.author.login != $u)] | sort_by(.updatedAt) | reverse')
aut=$(gh search prs --owner cashubtc --author "$U" --limit 200 --json repository,number,title,state,url,updatedAt | jq 'sort_by(.updatedAt) | reverse')
notes=$(cat notes.json)
{
printf '# Cashu Contributions\n\n'
printf 'Reviews and pull requests by [@%s](https://github.com/%s) across the [cashubtc](https://github.com/cashubtc) organisation. Updated %s.\n\n' "$U" "$U" "$(date -u +%Y-%m-%d)"
jq -rn --argjson r "$rev" --argjson a "$aut" --argjson n "$notes" '
def esc: gsub("\\|"; "\\|");
"| | Count |",
"|---|---|",
"| PRs reviewed | \($r | length) |",
"| Reviewed PRs merged | \([$r[] | select(.state == "merged")] | length) |",
"| PRs authored | \($a | length) |",
"| Authored PRs merged | \([$a[] | select(.state == "merged")] | length) |",
"",
"## Review findings",
"",
"| PR | Repo | Status | Result | Author response |",
"|---|---|---|---|---|",
($r[] | . as $p | $n["\($p.repository.name)/\($p.number)"] as $x | select($x != null)
  | "| [#\($p.number)](\($p.url)) \($p.title | esc) | \($p.repository.name) | \($p.state) | \($x.result | esc) | \($x.response // "" | esc) |"),
"",
"## All reviews",
"",
"| PR | Repo | Author | Status |",
"|---|---|---|---|",
($r[] | "| [#\(.number)](\(.url)) \(.title | esc) | \(.repository.name) | @\(.author.login) | \(.state) |"),
"",
"## Authored",
"",
"| PR | Repo | Status |",
"|---|---|---|",
($a[] | "| [#\(.number)](\(.url)) \(.title | esc) | \(.repository.name) | \(.state) |")
'
} > README.md
