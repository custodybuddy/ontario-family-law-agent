---
title: "Structure Lint"
owner: "tbd"
status: "active"
last_updated: "2026-05-14"
source_of_truth: "docs/architecture/structure-lint.md"
---

# Structure Lint

Run:

```bash
./scripts/lint-structure.sh
```

Checks:
- No empty files in the repository (excluding `.git`).
- Every markdown file has YAML frontmatter.
- Required frontmatter keys exist:
  - `title`
  - `owner`
  - `status`
  - `last_updated`
  - `source_of_truth`
