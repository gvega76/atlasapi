PUBLIC=omzvvlem
PRIVATE=5b04fd4f-adee-4037-abbf-13aa52ec4b09
curl -s -u "$PUBLIC:$PRIVATE" --digest "https://cloud.mongodb.com/api/atlas/v1.0/groups" -o project1.json
PROJECTID=`cat project1.json| jq -r ' .results[] | .id'`
curl -s --user "$PUBLIC:$PRIVATE" --digest \
     --request GET "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/clusters/?pretty=true" -o cluster.json
CLUSTERS=` cat cluster.json | jq -r ' .results[] | select( .backupEnabled == false ) | .name '`
for cluster in $CLUSTERS
do
echo $cluster
echo curl -s --user "$PUBLIC:$PRIVATE" --digest \
     --request GET "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/clusters/$cluster?pretty=true" -o $cluster.json
curl -s --user "$PUBLIC:$PRIVATE" --digest \
     --request GET "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/clusters/$cluster?pretty=true" -o $cluster.json
done
