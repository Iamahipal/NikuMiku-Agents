# Windows Work Companion

Windows-first, no-admin companion app inspired by `ryanstephen/lil-agents`, but reshaped for managed corporate laptops and practical productivity workflows.

The repo is being prepared in a `GitHub-ready` way from a locked-down office machine, so the current focus is:

- clear architecture
- safe phase boundaries
- source files and scaffolding
- zero dependency on local admin rights
- no assumption that office hardware is the place to test advanced automation

## Product Direction

Phase 1 is intentionally simple and useful:

- capture a desktop screenshot
- convert Word, Excel, and PowerPoint files to PDF
- convert images to PDF
- create approval packs from mixed review assets
- create zipped report bundles
- support drag-and-drop for common file and folder actions

Phase 2 expands toward the more portable `lil-agents` assistant loop:

- hold-to-record mic capture
- screenshot + transcript relay to an LLM
- point-tag parsing
- overlay cursor guidance
- TTS playback

## Principles

- `No admin required`: user-space only by default
- `Respect IT policy`: no drivers, services, registry persistence, or stealth background behavior
- `Local-first`: local actions before cloud dependencies
- `Explicit actions`: the user should know what the app is about to do
- `Easy to audit`: log actions and keep file outputs in a visible local folder

## Current Repo Contents

- `src/`: Windows app source
- `docs/`: architecture, roadmap, and IT-safe design notes
- `build.ps1` and `run.ps1`: initial scripts kept for later use on a personal machine

## Suggested GitHub Repo Structure

```text
lil-agents-windows/
  docs/
  src/
  .gitignore
  README.md
```

## Recommended Test Strategy

- Use this office machine only for writing and organizing code.
- Move the repo to GitHub later.
- Clone and test on a personal Windows laptop where build tools and Office dependencies can be installed safely.

## Notes

- OCR is deferred until we choose a safe local engine or an explicitly approved cloud path.
- Advanced desktop control should stay opt-in and clearly separated from the phase-1 productivity utilities.
- The long-term goal is not just an LLM shell. It is a reusable `Windows work companion` for document, media, reporting, and assistant-style tasks.
