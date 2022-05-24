cat cluster.json | jq -jr ' .results[] | { name : .name , regions :  .replicationSpecs[].regionsConfig | keys } |  .name , (.regions[]|" ",.),"\n" '
