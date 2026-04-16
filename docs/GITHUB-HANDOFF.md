# GitHub Handoff

When you move this project to GitHub from your personal machine, use this flow:

## 1. Create the Repository

Suggested repo name:

- `lil-agents-windows`
- `windows-work-companion`
- `brand-companion-windows`

## 2. Push From A Personal Machine

Do this from your own laptop, not the office machine:

```bash
git init
git add .
git commit -m "Initial Windows-first no-admin MVP scaffold"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```

## 3. Create Initial GitHub Issues

- Phase 1 UI polish
- Drag-and-drop conversion flow
- OCR spike
- Assistant pipeline abstraction
- Overlay cursor prototype
- TTS output prototype
- Portable packaging for testers

## 4. Create Milestones

- `MVP`
- `Assistant Loop`
- `Enterprise Safety`

## 5. Add A Clear Repo Description

Example:

`Windows-first, no-admin work companion for document conversion, packaging, and future assistant workflows inspired by lil-agents.`
