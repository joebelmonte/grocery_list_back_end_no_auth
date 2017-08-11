#!/bin/bash
NAME="My third test list"


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "name": "'"${NAME}"'"
    }
  }'

echo
