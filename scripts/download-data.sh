#!/bin/bash

source ./scripts/init.sh

echo "Timeframe:" $TIMEFRAME
echo "Configuration:" $CONFIGURATION
echo "Time range:" $DOWNLOAD_DATA_TIMERANGE

freqtrade download-data --timerange $DOWNLOAD_DATA_TIMERANGE -c $CONFIGURATION -t 1m 15m 1h