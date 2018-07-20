#!/bin/bash

source 00_configuration.sh

PROJECT_ID=$(gcloud config get-value core/project)

gsutil mb -p $PROJECT_ID -c regional -l $REGION  gs://$BUCKET/

FROM=gs://telemar-formazione-master-day6-solution/flights/chapter9/output/Servo
TO=gs://$BUCKET/flights/chapter9/output/Servo

CMD="gsutil -m cp -r $FROM $TO"

$CMD