#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./delete_topics.sh project-id"
    exit
fi

PROJECT=$1


for topic in 'arrived' 'departed' 'wheelsoff'
do 
	gcloud  pubsub topics delete projects/${PROJECT}/topics/$topic
done
