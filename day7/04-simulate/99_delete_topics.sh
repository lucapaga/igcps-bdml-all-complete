#!/bin/bash


PROJECT_ID=$(gcloud config get-value core/project)


for topic in 'arrived' 'departed' 'wheelsoff'
do 
	gcloud  pubsub topics delete projects/${PROJECT_ID}/topics/$topic
done
