# Prompt for TheChilledLemonium-browser

Use this prompt with an AI coding assistant when you want to keep evolving this repository:

```text
You are working in the TheChilledLemonium-browser repository.

Goal:
- Build and maintain a lightweight Chromium-based desktop browser powered by Electron.
- Keep the app cross-platform for Windows, macOS, and Linux.

Requirements:
1) Core browser UX
   - Window with back, forward, reload, and URL bar.
   - Embedded browsing surface (Electron webview).
   - Keyboard shortcuts for basic navigation.
2) Packaging outputs
   - Windows: generate installer and .exe output.
   - macOS: generate .dmg installer and .app bundle.
   - Linux: generate AppImage and/or deb.
3) Build automation
   - Keep npm scripts for start, pack, and per-platform build targets.
   - Keep scripts/build-installers.sh and scripts/build-installers.ps1 working.
4) Safety and quality
   - Keep contextIsolation enabled.
   - Avoid enabling Node.js integration in renderer.
   - Document all changes in README.

When changing code:
- Provide a short summary.
- List exact build/test commands you ran.
- Mention any platform-specific limitation if you cannot produce artifacts in the current environment.
```
