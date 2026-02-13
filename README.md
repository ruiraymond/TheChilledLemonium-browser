# TheChilledLemonium-browser

Cross-platform desktop browser shell built on Electron/Chromium.

## Features

- Basic browser controls: back, forward, reload, and URL bar.
- Embedded Chromium browsing experience through Electron.
- Packaging configuration for:
  - **Windows** installer/exe (NSIS)
  - **macOS** `.dmg` and `.app`
  - **Linux** AppImage and `.deb`

## Prerequisites

- Node.js 18+
- npm 9+

## Run locally

```bash
npm install
npm start
```

## Build installers

### NPM scripts

```bash
npm run build:win    # Windows .exe installer output
npm run build:mac    # macOS .dmg/.app output
npm run build:linux  # Linux AppImage/.deb output
npm run build:all    # all configured targets
```

### Helper scripts

Bash:

```bash
./scripts/build-installers.sh win
./scripts/build-installers.sh mac
./scripts/build-installers.sh linux
./scripts/build-installers.sh all
```

PowerShell:

```powershell
./scripts/build-installers.ps1 -Target win
./scripts/build-installers.ps1 -Target mac
./scripts/build-installers.ps1 -Target linux
./scripts/build-installers.ps1 -Target all
```

Build artifacts are written to `dist/`.

## Prompt template

A reusable AI prompt for this repository is included in [`PROMPT.md`](./PROMPT.md).
