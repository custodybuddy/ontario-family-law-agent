#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
FAIL=0

required_keys=(title owner status last_updated source_of_truth)

# 1) Reject empty files (excluding .git and dotfiles like .gitkeep).
while IFS= read -r f; do
  base=$(basename "$f")
  if [[ "$base" == .* ]]; then
    continue
  fi
  echo "EMPTY FILE: $f"
  FAIL=1
done < <(find "$ROOT" -type f -empty | rg -v '/\.git/')

# 2) Markdown files must include YAML frontmatter with required keys.
while IFS= read -r f; do
  first_line=$(sed -n '1p' "$f" || true)
  if [[ "$first_line" != "---" ]]; then
    echo "MISSING FRONTMATTER: $f"
    FAIL=1
    continue
  fi

  for key in "${required_keys[@]}"; do
    if ! rg -n "^${key}:" "$f" >/dev/null; then
      echo "MISSING KEY (${key}): $f"
      FAIL=1
    fi
  done
done < <(rg --files "$ROOT" -g '*.md')

if [[ "$FAIL" -ne 0 ]]; then
  echo "\nStructure lint failed."
  exit 1
fi

echo "Structure lint passed."
