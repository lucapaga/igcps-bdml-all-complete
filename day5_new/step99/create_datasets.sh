#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: ./create_datasets.sh  bucket-name max-num-workers"
    exit
fi

PROJECT=telemar-formazione-master
BUCKET=$1 #telemar-formazione-master-gcs-ingest-inbound
MAX_NUM_WORKERS=$2

gsutil cp ../trainday.csv gs://$BUCKET/flights/trainday.csv
gsutil -m rm -rf gs://$BUCKET/flights/day5_step99

cd df


mvn compile exec:java \
 -Dexec.mainClass=com.google.cloud.training.flights.CreateTrainingDataset \
 -Dexec.args="--project=$PROJECT --bucket=$BUCKET --fullDataset=true --maxNumWorkers=$MAX_NUM_WORKERS --autoscalingAlgorithm=THROUGHPUT_BASED"

# --workerMachineType=n1-highmem-8"
