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

# 3) Skill directory contract.
while IFS= read -r skill_dir; do
  for req in SKILL.md metadata.yaml examples.md tests.md; do
    if [[ ! -f "$skill_dir/$req" ]]; then
      echo "MISSING SKILL FILE: $skill_dir/$req"
      FAIL=1
    fi
  done
done < <(find "$ROOT/skills" -maxdepth 1 -type d -name '*.skill' 2>/dev/null | sort)

if [[ "$FAIL" -ne 0 ]]; then
  echo "\nStructure lint failed."
  exit 1
fi

echo "Structure lint passed."
