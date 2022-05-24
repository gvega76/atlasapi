PUBLIC=ecapaczb
PRIVATE=927dbd66-1b2e-4259-8b8a-53ae550c4925
PROJECTID=5e14dc59cf09a2acb4c97b84

curl --silent --stderr ./error.log -u "$PUBLIC:$PRIVATE" \
   --header "Accept: application/json" \
   --digest "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/processes?pretty=true" \
  -o processes.json
