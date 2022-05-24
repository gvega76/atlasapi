PUBLIC=ecapaczb
PRIVATE=927dbd66-1b2e-4259-8b8a-53ae550c4925
PROJECTID=5e14dc59cf09a2acb4c97b84
HOSTNAME=atlas-xfwi4e-shard-00-01.eehyp.mongodb.net

curl --silent --stderr ./error.log -u "$PUBLIC:$PRIVATE" \
   --header "Accept: application/gzip" --digest \
   --request GET "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/clusters/$HOSTNAME/logs/mongodb.gz" \
  -o  $HOSTNAME.log.gz

