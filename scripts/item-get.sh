#!/bin/bash
LISTID="2"
ID="2"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LISTID}/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \

echo
