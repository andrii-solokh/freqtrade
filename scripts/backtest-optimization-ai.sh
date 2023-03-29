#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $OPTIMIZE_TIMERANGE

freqtrade backtesting --strategy $STRATEGY --strategy-path $STRATEGY_PATH --config $CONFIGURATION --freqaimodel $MODEL --timerange $OPTIMIZE_TIMERANGE