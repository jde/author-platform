#!/usr/bin/env bash
# Style check for campaign drafts. Usage: bin/style-check.sh [files...]  (defaults to all campaign files)
# Fails (exit 1) on banned phrases or any sentence that appears in more than two files.
set -u
cd "$(dirname "$0")/.."
files=("$@"); [ ${#files[@]} -eq 0 ] && files=(campaigns/opportunities/*.md campaigns/people/*.md)
fail=0
banned=("Here's the" "Here's what" "Here's a" "Nothing to ask" "One tiny thing" "Small news" "That's the point" "That is the point" "the whole shape" "the thing is" "rather than a" ", not a " "Swedish side of" "I didn't write them" "surprised the" "turned into a" "a little wry" "no reply needed" "no pressure" "I understand if not" "I'd be glad to" "I'd love to" "happy to" "reach out" "touch base" "circle back" "leverage" "passionate" "excited to" "spellbinding" "must-read" "journey" "unique" "I also built a 1918 café" "Swedish-born historical novelist" "no headset needed")
echo "== banned phrases =="
for p in "${banned[@]}"; do
  # Patterns starting with a capital are matched case-sensitively at a word start, so "Here's a" doesn't hit "there's a".
  if [[ "$p" =~ ^[A-Z] ]]; then opts=(-lE); pat="(^|[^A-Za-z])${p}"; else opts=(-il); pat="$p"; fi
  list=$(grep "${opts[@]}" -- "$pat" "${files[@]}" 2>/dev/null)
  hits=$(printf "%s" "$list" | grep -c . || true)
  if [ "$hits" -gt 0 ]; then echo "  '$p': $hits file(s): $(printf "%s\n" "$list" | xargs -n1 basename | tr '\n' ' ')"; fail=1; fi
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
echo "== short fragments in drafts (under 4 words, ending in a period) =="
for f in "${files[@]}"; do
  awk '/^## Drafts/{d=1;next} /^## /{d=0} d' "$f" | grep -vE "^(Best|Warmly|Thanks|Helen|Hi |Hello |Subject|#|\*\*|>? *$|\[)" | grep -oE "(^|[.!?] )[A-Z][a-z']*( [a-z']+){0,2}\." | sed -E 's/^[.!?] //' | grep -vE "^(Thanks|Thank you|Best)\." | sed "s|^|  $(basename "$f"): |"
done | tee /tmp/frag.$$ ; [ -s /tmp/frag.$$ ] && fail=1; rm -f /tmp/frag.$$
echo "== word limits (first email over 160 words flagged by eye; social replies over 50) =="
[ $fail -eq 0 ] && echo "PASS" || echo "FAIL"
exit $fail
