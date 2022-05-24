cat alerts.json| jq ' .results[] | with_entries(select( [.key]  | inside(["eventTypeName","metricName","created" ] ) )) ' 
cat alerts.json| jq ' .results[] | { evnet : .eventTypeName, metric: .metricName,created : .created } '
