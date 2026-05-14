# Architecture Overview

## System Type
Content-first AI assistant architecture. The repository is organized as a knowledge and policy system that guides LLM behavior, not a conventional application runtime.

## Layers
1. Behavior layer
- Canonical system policy: `docs/CLAUDE.md`
- Legal scope and product rules: `docs/PRD.md`, `docs/LEGAL_DISCLAIMER.md`

2. Capability layer
- Skill contracts in `skills/*/SKILL.md`
- Each skill defines activation triggers, workflow, and output shape

3. Knowledge layer
- Legal sources and procedures in `knowledge-base/`
- User-facing educational content in `content-library/`

4. Output assembly layer
- Reusable output assets in `templates/`
- Conversation and triage playbooks in `response-frameworks/`

5. Integration layer
- Data model and policy scripts in `integrations/supabase/`
- External taxonomy/API references in `integrations/custodybuddy-sync/`
- Automation blueprints in `automation/blueprints/`

6. Quality and operations layer
- Test scenarios and evaluation rubrics in `testing/`
- Continuous maintenance and governance in `maintenance/` and `admin/`

## Request Flow
User request -> skill selection -> pull legal/procedural context -> apply safety and boundary checks -> render structured response using templates/frameworks -> optionally persist/sync through integrations.

## Source of Truth Rules
- Agent behavior: `docs/CLAUDE.md` only
- Product requirements: `docs/PRD.md` only
- Architecture map: this file
- Legacy duplicates should be pointers, not parallel specs
