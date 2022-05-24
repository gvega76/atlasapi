PUBLIC=ecapaczb
PRIVATE=927dbd66-1b2e-4259-8b8a-53ae550c4925
PROJECTID=5e14dc59cf09a2acb4c97b84

ID="atlas-xfwi4e-shard-00-02.eehyp.mongodb.net:27017"
curl -s  --user "$PUBLIC:$PRIVATE" --digest \
     --header "Content-Type: application/json" \
     --request GET "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/processes/$ID/measurements?granularity=PT1M&period=PT1M&pretty=true" \
    -o atlas-xfwi4e-shard-00-02.json
