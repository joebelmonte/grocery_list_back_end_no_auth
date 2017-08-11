#!/bin/bash
NAME="Third test item"
QUANTITY="1"
PRICE="19.99"
STORE="Star Market"
CATEGORY="Dairy"
NOTES="Third test item notes"
LISTID="2"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${LISTID}/items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
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
