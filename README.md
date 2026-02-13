# Binance Portfolio Reporter

Generates an Excel report of your Binance transactions, holdings, and P&L.

## Setup (one-time)
```bash
git clone https://github.com/JavaPhD/binance-app.git
cd binance-app
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
cp .env.example .env
vim .env   # fill in your API key and secret
```

> Get API keys from https://www.binance.com/en/my/settings/api-management — only **Enable Reading** is needed.

## Run

```bash
cd binance-app
source .venv/bin/activate
python binance_report.py
```

XLSX saved to your Desktop.

### Manual data files (optional)

If you have Auto-Invest DCA purchases or cold storage transfers not visible in the trade API, create these files from the examples:

```bash
cp manual_dca_plans.example.json manual_dca_plans.json
cp manual_transfers.example.json manual_transfers.json
```

Edit them with your actual data. See the example files for the format.


> **Note:** Must be run on a network that can reach Binance (home WiFi, not corporate).
