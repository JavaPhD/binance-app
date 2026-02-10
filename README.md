# Binance Portfolio Reporter

Generates an Excel report of your Binance transactions, holdings, and P&L.

## Setup (one-time)

```bash
mkdir binance-reporter && cd binance-reporter
curl -sL https://raw.githubusercontent.com/JavaPhD/binance-app/main/setup.sh | bash
vim .env   # fill in your API key and secret
```

> Get API keys from https://www.binance.com/en/my/settings/api-management — only **Enable Reading** is needed.

## Run

```bash
cd binance-reporter
source .venv/bin/activate
python binance_report.py
```

XLSX saved to your Desktop.

> **Note:** Must be run on a network that can reach Binance (home WiFi, not corporate).
