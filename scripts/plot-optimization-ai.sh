#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $OPTIMIZE_TIMERANGE

freqtrade backtesting --strategy $STRATEGY --strategy-path $STRATEGY_PATH --config $CONFIGURATION --freqaimodel $MODEL --timerange $OPTIMIZE_TIMERANGE
freqtrade plot-dataframe --strategy $STRATEGY --timerange $OPTIMIZE_TIMERANGE --strategy-path $STRATEGY_PATH --config $CONFIGURATION --freqaimodel $MODEL
freqtrade plot-profit --strategy $STRATEGY --timerange $OPTIMIZE_TIMERANGE --strategy-path $STRATEGY_PATH --config $CONFIGURATION --freqaimodel $MODEL

