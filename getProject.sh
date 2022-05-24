ORG_PRIVATE_KEY=91529fed-a9dd-48af-82b1-5866d862dfdc
ORG_PUBLIC_KEY=omfvluxh
PROJECT_ID=6111dbac46e93f174705e6b5
OM_URL="54.212.193.143:8080"

curl --user "$ORG_PUBLIC_KEY:$ORG_PRIVATE_KEY"  --digest \
     --header "Accept: application/json" \
     "http://$OM_URL/api/public/v1.0/groups/$PROJECT_ID/?pretty=true"  -o salida.json
