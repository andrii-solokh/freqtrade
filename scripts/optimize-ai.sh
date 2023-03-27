#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $OPTIMIZE_TIMERANGE
echo "Metric:" $OPTIMIZE_METRIC
echo "Spaces:" $OPTIMIZE_SPACES
echo "Epochs:" $OPTIMIZE_EPOCHS
echo "Strategy path:" $STRATEGY_PATH
echo "Model:" $MODEL

freqtrade hyperopt --strategy $STRATEGY --strategy-path $STRATEGY_PATH --config $CONFIGURATION --freqaimodel $MODEL --timerange $OPTIMIZE_TIMERANGE --hyperopt-loss $OPTIMIZE_METRIC --space $OPTIMIZE_SPACES -e $OPTIMIZE_EPOCHS