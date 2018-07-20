#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./create_temp_topic.sh project-id"
    exit
fi

PROJECT=$1


for topic in 'dataflow_temp'
do 
	gcloud  pubsub topics create projects/${PROJECT}/topics/$topic
done
