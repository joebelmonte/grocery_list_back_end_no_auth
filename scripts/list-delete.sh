#!/bin/bash
TOKEN="BAhJIiVmOWI5ZDExYTBlZWNhYjA5MDRkY2MyNjYzZDRiMGQ1ZQY6BkVG--d00fd9eb0943765181ea6197bba6bb344320d719"
ID="1"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \

echo
