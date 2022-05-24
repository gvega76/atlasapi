PUBLIC=ecapaczb
PRIVATE=927dbd66-1b2e-4259-8b8a-53ae550c4925
PROJECTID=5e14dc59cf09a2acb4c97b84

HOSTIDs=`curl --silent --stderr ./error.log -u "$PUBLIC:$PRIVATE" \
   --header "Accept: application/json" \
   --digest "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/processes?pretty=true" |jq -r '.results[] | select(.typeName == "REPLICA_PRIMARY") | .id'` 
for host in $HOSTIDs
do
echo $host
echo curl -s --digest -u "$PUBLIC:$PRIVATE" "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/processes/$host/performanceAdvisor/namespaces?pretty=true"
curl -s --digest -u "$PUBLIC:$PRIVATE" "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/processes/$host/performanceAdvisor/namespaces?pretty=true"
done
