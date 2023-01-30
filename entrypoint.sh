#!/bin/sh
# :author: pk13055
# :brief: runner script to trigger freqtrade

freqtrade trade \
	--logfile /freqtrade/user_data/logs/freqtrade.log \
	--db-url sqlite:////freqtrade/user_data/tradesv3.sqlite \
	--config /freqtrade/user_data/config.json \
	--strategy SampleStrategy \
