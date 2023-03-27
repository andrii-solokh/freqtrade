#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $BACKTEST_TIMERANGE

freqtrade plot-dataframe --strategy $STRATEGY -c $CONFIGURATION --timerange $BACKTEST_TIMERANGE
freqtrade plot-profit --strategy $STRATEGY -c $CONFIGURATION --timerange $BACKTEST_TIMERANGE