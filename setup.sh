#!/bin/bash
# Binance Portfolio Reporter — One-time setup
# curl -sL https://raw.githubusercontent.com/JavaPhD/binance-app/main/setup.sh | bash
set -e
DIR="$HOME/binance-reporter"
REPO="https://raw.githubusercontent.com/JavaPhD/binance-app/main"
echo "=== Binance Portfolio Reporter Setup ==="
echo ""
mkdir -p "$DIR"
cd "$DIR"
echo "Downloading files..."
curl -sLO "$REPO/binance_report.py"
curl -sLO "$REPO/requirements.txt"
curl -sL "$REPO/.env.example" -o .env
echo "Setting up Python environment..."
python3 -m venv .venv
.venv/bin/pip install --quiet --upgrade pip
.venv/bin/pip install --quiet -r requirements.txt
echo ""
echo "=== Setup complete! ==="
echo ""
echo "Next steps:"
echo "  1. Edit your credentials:"
echo "     vim $DIR/.env"
echo ""
echo "  2. Run the report:"
echo "     cd $DIR"
echo "     source .venv/bin/activate"
echo "     python binance_report.py"
echo ""
echo "The XLSX report will be saved to your Desktop."
