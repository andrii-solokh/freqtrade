#!/bin/bash

source ./scripts/init.sh

echo "Strategy:" $STRATEGY
echo "Configuration:" $CONFIGURATION
echo "Time range:" $OPTIMIZE_TIMERANGE
echo "Metric:" $OPTIMIZE_METRIC
echo "Spaces:" $OPTIMIZE_SPACES
echo "Epochs:" $OPTIMIZE_EPOCHS

python -m debugpy --listen 5678 freqtrade hyperopt --strategy $STRATEGY --hyperopt-loss $OPTIMIZE_METRIC --spaces $OPTIMIZE_SPACES --timerange $OPTIMIZE_TIMERANGE -e $OPTIMIZE_EPOCHS -c $CONFIGURATION