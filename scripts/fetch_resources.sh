#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

DATA_URL="http://databookuw.com/DATA.zip"
CODE_URL="http://databookuw.com/CODE_PYTHON.zip"

DATA_ZIP="DATA.zip"
CODE_ZIP="CODE_PYTHON.zip"

echo "Downloading DATA..."
curl -L "$DATA_URL" -o "$DATA_ZIP"

echo "Downloading CODE..."
curl -L "$CODE_URL" -o "$CODE_ZIP"

echo "Unzipping DATA..."
unzip -o "$DATA_ZIP"

echo "Unzipping CODE..."
unzip -o "$CODE_ZIP"

echo "Cleaning up zip files..."
rm -f "$DATA_ZIP" "$CODE_ZIP"

echo "Done."
