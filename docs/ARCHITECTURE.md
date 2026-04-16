# Architecture

## Overview

The Windows version should not be a direct port of the macOS AppKit implementation in `ryanstephen/lil-agents`.

Instead, it should preserve the portable idea:

- quick user invocation
- contextual capture
- assistant reasoning
- visible guidance and feedback
- lightweight execution of helpful tasks

## Platform Strategy

### Phase 1

- Windows desktop app
- user-space only
- no installer required for early internal testing
- local productivity tools first

### Phase 2

- optional assistant pipeline
- optional cloud integrations
- optional overlay guidance
- explicit controls for recording and outbound requests

## App Layers

### 1. Shell Layer

Responsibilities:

- main window
- action launcher
- activity log
- output folder access
- future hotkey registration

### 2. Core Action Layer

Responsibilities:

- document conversion
- image conversion
- bundling and packaging
- job orchestration
- progress and error reporting

### 3. Capability Layer

Responsibilities:

- screenshot capture
- microphone capture
- speech-to-text
- LLM request routing
- overlay rendering
- TTS playback

These capabilities should be isolated behind interfaces so corporate-safe builds can disable them cleanly.

### 4. Policy Layer

Responsibilities:

- feature flags
- confirmation gates
- audit logging
- allowed folder restrictions
- future enterprise configuration

## Recommended Runtime Evolution

### Safe starting point

- plain C#
- Windows desktop UI
- minimal dependencies

### Later on personal machine

- move to modern .NET if useful
- package with MSIX or single-file distribution
- add better media and OCR dependencies

## Why This Structure Matters

This product will eventually mix:

- normal file utilities
- Office automation
- media processing
- AI-assisted control

Those should not live in one tightly coupled code path. Clear boundaries make it easier to:

- disable risky features
- test on personal hardware
- later support corporate settings and approvals
