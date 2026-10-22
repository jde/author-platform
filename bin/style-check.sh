#!/usr/bin/env bash
# Style check for campaign drafts. Usage: bin/style-check.sh [files...]  (defaults to all campaign files)
# Fails (exit 1) on banned phrases or any sentence that appears in more than two files.
set -u
cd "$(dirname "$0")/.."
files=("$@"); [ ${#files[@]} -eq 0 ] && files=(campaigns/opportunities/*.md campaigns/people/*.md)
fail=0
banned=("no reply needed" "no pressure" "I understand if not" "I'd be glad to" "I'd love to" "happy to" "reach out" "touch base" "circle back" "leverage" "passionate" "excited to" "spellbinding" "must-read" "journey" "unique" "I also built a 1918 café" "Swedish-born historical novelist" "no headset needed")
echo "== banned phrases =="
for p in "${banned[@]}"; do
  hits=$(grep -il -- "$p" "${files[@]}" 2>/dev/null | wc -l | tr -d ' ')
  if [ "$hits" -gt 0 ]; then echo "  '$p': $hits file(s): $(grep -il -- "$p" "${files[@]}" | xargs -n1 basename | tr '\n' ' ')"; fail=1; fi
done
echo "== sentences appearing in more than two files =="
tmp=$(mktemp)
for f in "${files[@]}"; do
  # drafts only: text after '## Drafts' up to next '## '
  awk '/^## Drafts/{d=1;next} /^## /{d=0} d' "$f" | grep -vE '^(###|\*\*Touch|Subject:|Best,|Warmly,|Warm thanks,|With thanks,|Helen( Lundström Erwin)?$|helenerwin\.com$|Dear |Hi |Hello )' | tr '\n' ' ' | grep -oE "[A-Z][^.!?]{30,160}[.!?]" | sed -E 's/\[[^]]*\]//g; s/  +/ /g' | grep -vE "^(Best|Warmly|Warm thanks|Helen|Subject|Touch [0-9]|Hi |Hello )" | grep -vE "helenerwin\.$" | sort -u | sed "s|^|$(basename "$f")\t|" >> "$tmp"
done
cut -f2 "$tmp" | sort | uniq -c | awk '$1>2' | sort -rn | while read -r n s; do echo "  [$n] $s"; fail=1; done
dups=$(cut -f2 "$tmp" | sort | uniq -c | awk '$1>2' | wc -l | tr -d ' ')
[ "$dups" -gt 0 ] && fail=1
rm -f "$tmp"
echo "== word limits (first email over 160 words flagged by eye; social replies over 50) =="
[ $fail -eq 0 ] && echo "PASS" || echo "FAIL"
exit $fail
