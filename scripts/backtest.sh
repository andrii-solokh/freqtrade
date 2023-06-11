#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $BACKTEST_TIMERANGE

freqtrade backtesting --strategy $STRATEGY -c $CONFIGURATION --timerange $BACKTEST_TIMERANGE 