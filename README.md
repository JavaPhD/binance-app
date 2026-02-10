# Binance Portfolio Reporter

Pulls your Binance trading data and generates a formatted Excel (XLSX) report.

## Output

XLSX report with 3 sheets:

| Sheet | Contents |
|-------|----------|
| **Transactions** | Full history of all trades, deposits, withdrawals sorted by date |
| **Holdings** | Per-coin balances, avg buy price, current market price, unrealised P&L |
| **PNL Summary** | Profit & Loss per coin, totals in USD/SGD/CNY |

## Quick Start

### Step 1: Install

Open Terminal, create a folder, and run setup:

```bash
mkdir binance-reporter && cd binance-reporter
curl -sL https://raw.githubusercontent.com/JavaPhD/binance-app/main/setup.sh | bash
```

### Step 2: Add your Binance API credentials

```bash
vim .env
```

Fill in your `BINANCE_API_KEY` and `BINANCE_API_SECRET`.

> Get your API keys from https://www.binance.com/en/my/settings/api-management
> Only **Enable Reading** is needed — no trading or withdrawal permissions required.

### Step 3: Run

```bash
source .venv/bin/activate
python binance_report.py
```

Report is saved to your Desktop as `Binance_Report_YYYYMMDD.xlsx`.

## Options

```bash
python binance_report.py --symbols BTCUSDT,ETHUSDT,BNBUSDT
python binance_report.py --output ~/Downloads/my_report.xlsx
```
