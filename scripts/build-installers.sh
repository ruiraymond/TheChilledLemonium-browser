#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-all}"

if ! command -v npm >/dev/null 2>&1; then
  echo "npm is required but not found."
  exit 1
fi

npm install

case "$TARGET" in
  win)
    npm run build:win
    ;;
  mac)
    npm run build:mac
    ;;
  linux)
    npm run build:linux
    ;;
  all)
    npm run build:all
    ;;
  *)
    echo "Unknown target '$TARGET'. Use: win | mac | linux | all"
    exit 1
    ;;
esac

echo "Build complete. Installers are in ./dist"
