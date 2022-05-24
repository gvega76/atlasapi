
PUBLIC=ecapaczb
PRIVATE=927dbd66-1b2e-4259-8b8a-53ae550c4925
PROJECTID=5e14dc59cf09a2acb4c97b84

curl -s --user "$PUBLIC:$PRIVATE" --digest \
     --header "Accept: application/json" \
     --header "Content-Type: application/json" \
     --request PATCH "https://cloud.mongodb.com/api/atlas/v1.0/groups/$PROJECTID/databaseUsers/admin/fhirtest" \
     --data '{
            "password" : "newpassword"
            }'
