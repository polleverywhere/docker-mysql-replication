#!/bin/bash

if [[ "$*" == *--clean* ]]
then
  rm -rf ./main_data ./replicator_data
fi

docker-compose up --build -d
