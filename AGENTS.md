# AGENTS

This repository is being developed with Codex/cloud in mind.

## Product Summary

Windows Work Companion is a Windows-first desktop utility that starts with practical local productivity actions and can later grow into a guided desktop assistant.

Phase 1:

- desktop screenshot capture
- Word, Excel, and PowerPoint to PDF conversion
- image to PDF conversion
- approval pack creation
- report bundling
- drag-and-drop workflows

Phase 2:

- hold-to-record mic capture
- screenshot + transcript to assistant
- point-tag parsing
- overlay guidance
- TTS playback

## Constraints

- default to `no admin required`
- respect managed-device environments
- avoid hidden background behavior
- keep risky capabilities optional and clearly separated
- prefer local-first workflows before cloud dependencies

## Repo Priorities

1. Make phase 1 genuinely useful on Windows.
2. Keep the code modular so phase 2 can be added safely.
3. Preserve clear logs, outputs, and guardrails.

## Working Style

- Prefer small, auditable changes.
- Keep UI and service layers separate.
- Put future assistant features behind interfaces and feature flags.
- Do not mix experimental automation into the stable document workflow path.

## Current State

- Source and docs exist.
- The repo has not been fully built or tested in this environment.
- Real execution should happen on a personal Windows laptop, not the office machine used to draft the repo.

## Important Docs

- `README.md`
- `docs/ARCHITECTURE.md`
- `docs/ROADMAP.md`
- `docs/IT-SAFETY.md`
- `docs/USE-CASES.md`
- `docs/CODEX-CONTEXT.md`
- `docs/STATUS.md`
