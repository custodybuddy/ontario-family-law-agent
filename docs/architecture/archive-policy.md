---
title: "Archive Policy"
owner: "tbd"
status: "active"
last_updated: "2026-05-14"
source_of_truth: "docs/architecture/archive-policy.md"
---

# Archive Policy

## Purpose
Keep root clean and reserve it for active source-of-truth files.

## Rules
- Store generated bundles (`.zip`) in `archive/artifacts/`.
- Store legacy snapshots and structure exports in `archive/artifacts/`.
- Do not keep temporary OS files (for example `.DS_Store`) in version control.

## Enforcement
- Root hygiene is validated in code review.
- Structure checks run in CI via `.github/workflows/structure-lint.yml`.
