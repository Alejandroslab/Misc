#!/bin/bash

# <bitbar.title>ETHEUR last price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>G.G.</bitbar.author>
# <bitbar.author.github>ggrelet</bitbar.author.github>

# <bitbar.desc>Gives the last price of ether to euro</bitbar.desc>
# <bitbar.image>https://i.imgur.com/iGX2yjR.png</bitbar.image>
# <bitbar.dependencies>bash</bitbar.dependencies>

val=$(curl -s "https://api.kraken.com/0/public/Ticker?pair=ETHEUR" | tr -d '{}"[]' | tr ':,' '\n' | grep -A1 "^c$" | tail -1)

ethCoinbase=$(curl -s "https://api.coinbase.com/v2/prices/ETH-EUR/spot" -H "CB-VERSION: 2017-04-16" | egrep -o '{"data":{"amount":"[0-9]+(\.)?' | sed 's/{"data":{"amount"://'  | sed 's:^.\(.*\).$:\1:')

ethGDAX=$(curl -s "https://api.gdax.com/BTC-EUR/ticker" -H "CB-VERSION: 2017-04-16" | egrep -o '{"data":{"amount":"[0-9]+(\.)?' | sed 's/{"data":{"amount"://'  | sed 's:^.\(.*\).$:\1:')

echo "$(printf "ETH %.2f \n" "$val") | size=13"
echo "---"
echo "Kraken.com | href=\"https://www.kraken.com/\""
echo "Coinbase: $(printf "%.2f \n" "$ethCoinbase") | size=13"
echo "GDAX: $(printf "%.2f \n" "$ethGDAX") | size=13"
echo "Inserisci altre monete"
echo "Inserisci altre monete"
echo "---"
echo "Inserisci monete in USD"
echo "Inserisci monete in USD"
echo "Inserisci monete in USD"
echo "Inserisci monete in USD"
echo "Inserisci monete in USD"