#!/bin/bash
NAME="Bob's Updated test item"
QUANTITY="1"
PRICE="19.99"
STORE="Star Market"
CATEGORY="Dairy"
NOTES="Bob's Updated test item"
LISTID="2"
ID="2"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LISTID}/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "name": "'"${NAME}"'",
      "quantity": "'"${QUANTITY}"'",
      "price": "'"${PRICE}"'",
      "store": "'"${STORE}"'",
      "category": "'"${CATEGORY}"'",
      "notes": "'"${NOTES}"'"
    }
  }'
echo
