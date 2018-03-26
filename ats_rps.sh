#!/bin/sh
#ats_rps
case $1 in
	config)   
		cat <<'EOM'
		graph_title ATS Cache RPS
		graph_vlabel count
		cache_rps.label RPS
		graph_category ATS
		EOM
	exit 0;;
esac
echo -n "cache_rps.value "
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.user_agent_xacts_per_second
