# Title: StockScrape
# Author: Eddy Pandzic
# Description: Downloads historical data of stock, ETF, future, mutual funds, and index prices.

# Import modules
import yfinance as yf
import pandas as pd

# Define stocks to download
tickers = ('GC=F', 'BTC=F', '^GSPC', '^DJI', '^IXIC', '^RUT')

# Download data
for i in tickers:
    if i == 'GC=F':
        Gold = yf.download(i, start="1970-01-01", end="2025-04-30", interval='1mo')
        Gold.to_csv(r"C:\Users\eddyp\Desktop\Project [classified]\Gold.csv")
    elif i == 'BTC=F':
        Bitcoin = yf.download(i, start="1970-01-01", end="2025-04-30", interval='1mo')
        Bitcoin.to_csv(r"C:\Users\eddyp\Desktop\Project [classified]\Bitcoin.csv")
    elif i == '^GSPC': 
        SP500 = yf.download(i, start="1970-01-01", end="2025-04-30", interval='1mo')
        SP500.to_csv(r"C:\Users\eddyp\Desktop\Project [classified]\SP500.csv")
    elif i == '^DJI':
        DowJones = yf.download(i, start="1970-01-01", end="2025-04-30", interval='1mo')
        DowJones.to_csv(r"C:\Users\eddyp\Desktop\Project [classified]\DowJones.csv")
    elif i == '^IXIC':
        NASDAQ = yf.download(i, start="1970-01-01", end="2025-04-30", interval='1mo')
        NASDAQ.to_csv(r"C:\Users\eddyp\Desktop\Project [classified]\NASDAQ.csv")
    elif i == '^RUT':
        Russel2000 = yf.download(i, start="1970-01-01", end="2025-04-30", interval='1mo')
        Russel2000.to_csv(r"C:\Users\eddyp\Desktop\Project [classified]\Russel2000.csv")
    
print("Download successful!")



