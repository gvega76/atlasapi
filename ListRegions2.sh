cat cluster.json | jq -jr ' .results[] | { name : .name , regions :  .replicationSpecs[].regionsConfig | keys } | { name :  .name, regions :  .regions[]  } | .regions," ", .name,"\n"'
