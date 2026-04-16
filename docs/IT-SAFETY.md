# IT Safety

This repo is being designed with managed Windows devices in mind.

## Default Safety Rules

- no admin requirement
- no drivers
- no services
- no scheduled tasks
- no registry startup entries
- no hidden background capture
- no stealth network traffic

## User Trust Rules

- every advanced capture feature must be visible to the user
- every destructive action must require confirmation
- outputs should be easy to find
- logs should be human-readable

## Office Laptop Rule

Use office machines for:

- writing source files
- reviewing architecture
- documenting workflows

Avoid using office machines for:

- installing build tools
- testing global hooks aggressively
- recording workflows without explicit approval
- experimenting with outbound AI integrations

## Personal Laptop Rule

Use a personal Windows machine later for:

- compiling the app
- testing OCR
- testing audio capture
- testing overlay guidance
- evaluating distribution options
