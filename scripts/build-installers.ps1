param(
  [ValidateSet('win','mac','linux','all')]
  [string]$Target = 'win'
)

$ErrorActionPreference = 'Stop'

if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
  throw 'npm is required but not found.'
}

npm install

switch ($Target) {
  'win' { npm run build:win }
  'mac' { npm run build:mac }
  'linux' { npm run build:linux }
  'all' { npm run build:all }
}

Write-Host 'Build complete. Installers are in ./dist'
