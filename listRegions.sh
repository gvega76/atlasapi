 cat cluster.json | jq ' .results[] | { name : .name , regions :  .replicationSpecs[].regionsConfig | keys } '
