#!/bin/bash

CODE=$(curl -o /dev/null -s -w "%{http_code}\n" guvi.in)

echo "HTTP Status Code: $CODE"

if [ $CODE -eq 200 ]; then
  echo "Success: The request was successful."
else
  echo "Failure: The request failed with status code $CODE."
fi

