#!/bin/bash

BUCKET = 'telemar-flights'
REGION = 'europe-west3'

PROJECT_ID=$(gcloud config get-value core/project)

gsutil mb -p $PROJECT_ID -c regional -l $REGION  gs://$BUCKET/

FROM=gs://telemar-flights-bkp/flights/chapter9/output\n
TO=gs://$BUCKET/flights/chapter9/output

CMD="gsutil -m cp -r $FROM $TO"

$CMD