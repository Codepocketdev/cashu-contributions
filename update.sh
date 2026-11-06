#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
U=Codepocketdev
rev=$(gh search prs --owner cashubtc --reviewed-by "$U" --limit 200 --json repository,number,title,state,author,url,updatedAt | jq --arg u "$U" '[.[] | select(.author.login != $u)]')
com=$(gh search prs --owner cashubtc --commenter "$U" --limit 200 --json repository,number,title,state,author,url,updatedAt | jq --arg u "$U" '[.[] | select(.author.login != $u)]')
rev=$(jq -n --argjson a "$rev" --argjson b "$com" '($a + $b) | unique_by(.repository.name + (.number|tostring)) | sort_by(.number) | reverse')
aut=$(gh search prs --owner cashubtc --author "$U" --limit 200 --json repository,number,title,state,url,updatedAt | jq 'sort_by(.number) | reverse')
extra=$(cat extra.json)
{
printf '# Cashu Contributions\n\n'
printf 'Reviews and pull requests by [@%s](https://github.com/%s) across the [cashubtc](https://github.com/cashubtc) organisation.\n\n' "$U" "$U"
jq -rn --argjson r "$rev" --argjson a "$aut" --argjson e "$extra" '
def esc: gsub("\\|"; "\\|");
"| | Count |",
"|---|---|",
"| PRs reviewed or commented on | \($r | length) |",
"| Of those, merged | \([$r[] | select(.state == "merged")] | length) |",
"| PRs authored | \($a | length) |",
"| Authored PRs merged | \([$a[] | select(.state == "merged")] | length) |",
"| Commits landed through maintainers | \($e | length) |",
"",
"## Reviews",
"",
"| PR | Repo | Author | Status |",
"|---|---|---|---|",
($r[] | "| [#\(.number)](\(.url)) \(.title | esc) | \(.repository.name) | @\(.author.login) | \(.state) |"),
"",
"## Authored",
"",
"| PR | Repo | Status |",
"|---|---|---|",
($a[] | "| [#\(.number)](\(.url)) \(.title | esc) | \(.repository.name) | \(.state) |"),
"",
"## Landed through maintainers",
"",
"| Contribution | Repo | Date | Credit |",
"|---|---|---|---|",
($e[] | "| [\(.what | esc)](\(.url)) | \(.repo) | \(.date) | \(.credit) |")
'
} > README.md
