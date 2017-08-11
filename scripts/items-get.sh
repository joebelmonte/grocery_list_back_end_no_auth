#!/bin/bash
LISTID="2"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LISTID}/items"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \

echo
