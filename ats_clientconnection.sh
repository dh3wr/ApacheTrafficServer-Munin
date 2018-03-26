#!/bin/sh
#ats_clientconnection

case $1 in
	config)
		cat <<'EOM'
		graph_title ATS Cache Client Connection
		graph_vlabel count
		cache_cntcnnt.label Client Connections
		graph_category ATS
		EOM
	exit 0;;
esac
echo -n "cache_cntcnnt.value "
/usr/local/trafficserver/bin/traffic_line -r proxy.node.current_client_connections
