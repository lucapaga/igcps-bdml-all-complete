#!/bin/bash


PROJECT_ID=$(gcloud config get-value core/project)

python simulate.py --project $PROJECT_ID --startTime "2015-04-01 00:00:00 UTC" --endTime "2015-04-03 00:00:00 UTC" --speedFactor 60 --jitter=None
