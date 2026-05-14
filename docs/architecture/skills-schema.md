---
title: "Skills Schema"
owner: "tbd"
status: "active"
last_updated: "2026-05-14"
source_of_truth: "docs/architecture/skills-schema.md"
---

# Skills Schema

Each skill directory under `skills/*.skill` must contain:

- `SKILL.md`: behavioral instructions, triggers, and workflow
- `metadata.yaml`: machine-readable skill metadata
- `examples.md`: representative prompt/response examples
- `tests.md`: skill-level quality and safety test cases

This contract is enforced by `scripts/lint-structure.sh`.
