#! /bin/bash

HOST="localhost"

if [ $# -eq 1 ]
then
  HOST=$1
fi

echo "Checking http://${HOST}:8000/"
curl -s "http://${HOST}:8000/" > /dev/null
res=$?

if [ ${res} -eq 0 ]
then
  echo "The service is responding correctly"
else
  echo "The curl command returned ${res} (see curl manual / EXIT CODES)"
fi
