PUBLIC=etusafir
PRIVATE=c347f82e-812c-420a-ad26-b15027662a58
curl -s -u "$PUBLIC:$PRIVATE" --digest "https://cloud.mongodb.com/api/atlas/v1.0/groups" -o project1.json
PROJECTID=`cat project1.json| jq -r ' .results[] | .id'`
curl --user "$PUBLIC:$PRIVATE" --digest \
  --header "Content-Type: application/json" \
  "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/events?minDate=2022-05-30" -o events.json
