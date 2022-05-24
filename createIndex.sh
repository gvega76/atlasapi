PUBLIC=ecapaczb
PRIVATE=927dbd66-1b2e-4259-8b8a-53ae550c4925
PROJECTID=5e14dc59cf09a2acb4c97b84

curl -s -u "$PUBLIC:$PRIVATE" --digest --header "Content-Type: application/json"  --request POST "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/clusters/TestMonitoring/index" --data '{
         "db": "sample_airbnb",
         "collection": "listingsAndReviews_big_collection",
         "keys": [{ "property_type": 1 }]
       }'

