#!/bin/bash
# Binance Portfolio Reporter — One-time setup
# mkdir binance-reporter && cd binance-reporter
# curl -sL https://raw.githubusercontent.com/JavaPhD/binance-app/main/setup.sh | bash
set -e
REPO="https://raw.githubusercontent.com/JavaPhD/binance-app/main"
echo "=== Binance Portfolio Reporter Setup ==="
echo "Installing to: $(pwd)"
echo ""
echo "Downloading files..."
curl -sLO "$REPO/binance_report.py"
curl -sLO "$REPO/requirements.txt"
curl -sL "$REPO/.env.example" -o .env
echo "Creating Python environment..."
python3 -m venv .venv
echo "Installing dependencies (this may take a minute)..."
.venv/bin/pip install --upgrade pip 2>&1 | tail -1
.venv/bin/pip install -r requirements.txt 2>&1 | tail -1
echo ""
echo "=== Setup complete! ==="
echo ""
echo "Next steps:"
echo "  1. Edit your credentials:"
echo "     vim .env"
echo ""
echo "  2. Run the report:"
echo "     source .venv/bin/activate"
echo "     python binance_report.py"
echo ""
echo "The XLSX report will be saved to your Desktop."
