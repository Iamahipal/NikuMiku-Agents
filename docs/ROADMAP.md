# Roadmap

## Phase 1

Ship a useful Windows productivity companion without admin rights.

### Goals

- capture desktop screenshots
- convert Office files to PDF
- convert images to PDF
- create approval packs for mixed review files
- create report bundles
- support drag-and-drop actions for files and folders
- keep all outputs visible and local

### Non-goals

- background monitoring
- browser automation
- website credential handling
- silent recording
- hidden startup persistence

## Phase 1.5

Improve reliability and packaging.

### Additions

- drag-and-drop files into the app
- recent actions list
- better batch conversion UI
- output naming rules
- settings file
- portable release package

## Phase 2

Add the portable `assistant loop`.

### Features

- hold-to-record microphone capture
- screenshot + transcript prompt packaging
- assistant endpoint abstraction
- point-tag parsing
- overlay cursor guidance
- TTS playback

### Guardrails

- clear user consent
- visible recording state
- explicit outbound network settings
- action confirmation before any click-through behavior

## Phase 3

Expand into work-companion workflows.

### Candidate workflows

- campaign pack builder
- report export and bundling
- caption and asset packaging
- transcript and subtitle preparation
- meeting prep pack
- post-campaign archive

## Enterprise Readiness

Before company-wide use, the app should support:

- audit log export
- feature gating
- environment-based configuration
- allowlist-based action execution
- admin-disabled advanced features
