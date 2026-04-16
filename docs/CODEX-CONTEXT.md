# Codex Context

## Why This Repo Exists

The original inspiration is `ryanstephen/lil-agents`, but the Windows version is not meant to be a literal port.

The real idea we are preserving is:

- lightweight desktop presence
- quick capture of context
- useful one-click actions
- room to grow into guided assistance

## Product Direction

This should become a practical Windows work companion that helps with:

- document conversion
- report packaging
- campaign review packs
- drag-and-drop utilities
- eventually contextual assistant guidance

## Target User

The initial product direction is strongly shaped by employer-branding and content operations workflows.

Examples:

- convert review decks to PDF
- build approval packs from mixed files
- bundle campaign folders for sharing
- package monthly reports

## Why Phase 1 Matters

The app needs to prove value without relying on:

- admin access
- background services
- complex install steps
- aggressive automation

If phase 1 is solid, the assistant loop can be added later.

## Assistant Loop For Later

The intended later flow is:

1. screenshot the desktop
2. record mic while hotkey is held
3. send screenshot + transcript to an LLM
4. parse point tags
5. animate a click-through overlay cursor
6. play TTS

This is a roadmap item, not the current stable product.

## Recommended Next Cloud Tasks

1. Make the phase-1 WPF code compile cleanly on a personal Windows machine.
2. Add drag-and-drop polish and better error states.
3. Add settings and feature-flag loading from config.
4. Add batch conversion UX and output naming controls.
5. Add OCR only after choosing the local or cloud strategy.
