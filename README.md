# FreqTrade Strategies

## Configuration

```sh
mkdir data strategies
alias dc='docker compose'
dc pull
dc run --rm freqtrade create-userdir --userdir user_data
dc run --rm freqtrade new-config --config user_data/config.json
```

- Go to `data/config.json` and change `api_server.listen_ip_address` to `0.0.0.0`


## Running

```sh
docker compose up -d
```

- Go to `localhost:8080` to view the UI


## Development

- Downloading data

```sh
docker compose run --rm freqtrade download-data --pairs ETH/BTC --exchange binance --days 5 -t 1h
```

- Backtest

```sh
docker compose run --rm freqtrade backtesting --config user_data/config.json --strategy SampleStrategy --timerange 20190801-20191001 -i 5m
```
