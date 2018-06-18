#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./01.make_gcs_bucket.sh  'destination-bucket-name'"
    exit
fi

gsutil mb -c regional -l ${GCS_REGION} gs://${1}/ 
