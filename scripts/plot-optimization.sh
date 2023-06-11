#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $OPTIMIZE_TIMERANGE

freqtrade backtesting --strategy $STRATEGY -c $CONFIGURATION --timerange $OPTIMIZE_TIMERANGE 
freqtrade plot-dataframe --strategy $STRATEGY -c $CONFIGURATION --timerange $OPTIMIZE_TIMERANGE
freqtrade plot-profit --strategy $STRATEGY -c $CONFIGURATION --timerange $OPTIMIZE_TIMERANGE
