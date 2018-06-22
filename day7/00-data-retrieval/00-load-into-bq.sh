#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: ./load_to_bq.sh  dataset-name"
    exit
fi

BQ_DATASET=$1
FROM=gs://telemar-flights-bkp/simevents

bq mk $BQ_DATASET

echo "Loading all files into BigQuery"

gsutil cp $FROM/simevents.json simevents.json
bq load --skip_leading_rows 1 $BQ_DATASET.simevents "$FROM/simevents00*" ./simevents.json