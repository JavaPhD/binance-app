#!/bin/bash
# Build Binance Portfolio Reporter as a standalone macOS .app
# Run this script ON the MacBook where the app will be used.
#
# Prerequisites:
#   brew install python@3.12   (or any Python 3.9+)
#   pip3 install -r requirements.txt
#
# Usage:
#   chmod +x build_macos.sh
#   ./build_macos.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "=== Binance Portfolio Reporter — macOS Build ==="

# 1. Create/activate venv
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv .venv
fi
source .venv/bin/activate

# 2. Install dependencies
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# 3. Build with PyInstaller
echo "Building .app bundle..."
pyinstaller \
    --name "Binance Reporter" \
    --windowed \
    --onefile \
    --noconfirm \
    --clean \
    --add-data "requirements.txt:." \
    --hidden-import openpyxl \
    --hidden-import yfinance \
    --hidden-import requests \
    --icon NONE \
    binance_app.py

echo ""
echo "=== Build complete! ==="
echo "App location: dist/Binance Reporter.app"
echo ""
echo "To install:"
echo "  1. Drag 'dist/Binance Reporter.app' to /Applications"
echo "  2. Double-click to run"
echo ""
echo "Note: On first run, macOS may block the app."
echo "  Go to System Settings → Privacy & Security → click 'Open Anyway'"
