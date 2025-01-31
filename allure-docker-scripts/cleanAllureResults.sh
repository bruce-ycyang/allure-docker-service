#!/bin/bash

PROJECT_ID=$1
RESULTS_TIMESTAMP=$3

echo "Cleaning results for PROJECT_ID: $PROJECT_ID"
PROJECT_RESULTS_DIRECTORY=$STATIC_CONTENT_PROJECTS/$PROJECT_ID/results/results-$RESULTS_TIMESTAMP
if [ "$(ls -A $PROJECT_RESULTS_DIRECTORY | wc -l)" != "0" ]; then
    find $PROJECT_RESULTS_DIRECTORY/ -maxdepth 1 -type f -print0 | xargs -0 rm 2> /dev/null
    rm -fr $PROJECT_RESULTS_DIRECTORY
fi

echo "Results cleaned for PROJECT_ID: $PROJECT_ID"
