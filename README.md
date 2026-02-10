# Binance Portfolio Reporter

Desktop app that pulls your Binance trading data and generates a formatted Excel (XLSX) report.

## What it does

Connects to the Binance API, fetches all your:
- **Trades** (spot buys/sells)
- **Deposits**
- **Withdrawals**

Then generates an XLSX report with 3 sheets:

| Sheet | Contents |
|-------|----------|
| **Transactions** | Full history of all trades, deposits, withdrawals sorted by date |
| **Holdings** | Per-coin balances, avg buy price, current market price, unrealised P&L |
| **PNL Summary** | Profit & Loss per coin, totals in USD/SGD/CNY |

## Setup on macOS

### Option A: Run directly (quick)

```bash
# Install Python if not already installed
brew install python@3.12

# Clone or copy this folder to the Mac, then:
cd binance-app
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

# Run the app
python binance_app.py
```

### Option B: Build a standalone .app (recommended for non-technical users)

```bash
cd binance-app
./build_macos.sh
```

This creates `dist/Binance Reporter.app` — drag it to `/Applications` and double-click to run.

**First launch note:** macOS may block the app. Go to **System Settings → Privacy & Security** and click **Open Anyway**.

## Usage

1. Launch the app
2. Enter your Binance **API Key** and **API Secret**
   - Create read-only API keys at https://www.binance.com/en/my/settings/api-management
   - Only **read** permissions are needed (no trading, no withdrawal)
3. Adjust symbols if needed (default: `BTCUSDC, ETHUSDC`)
4. Click **Generate Report**
5. XLSX is saved to your Desktop by default

## API Key Setup (Binance)

1. Log in to Binance → Account → API Management
2. Create a new API key
3. **Enable only:** "Enable Reading"
4. **Disable:** Enable Spot & Margin Trading, Enable Withdrawals
5. Optionally restrict to your IP address for extra security

## Requirements

- Python 3.9+
- macOS 10.15+ (Catalina or later)
- Binance API key with read-only permissions
