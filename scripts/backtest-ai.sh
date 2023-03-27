#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $BACKTEST_TIMERANGE
echo "Strategy path:" $STRATEGY_PATH
echo "Model:" $MODEL

freqtrade backtesting --strategy $STRATEGY --strategy-path $STRATEGY_PATH --config $CONFIGURATION --freqaimodel $MODEL --timerange $BACKTEST_TIMERANGE
