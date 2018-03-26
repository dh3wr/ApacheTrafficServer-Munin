#!/bin/sh
#ats_serverconnection
case $1 in
	config)
		cat <<'EOM'
		graph_title ATS Cache Server Connections
		graph_vlabel count
		cache_srvcnnt.label Server Connections
		graph_category ATS
		EOM
	exit 0;;
esac
echo -n "cache_srvcnnt.value "
/usr/local/trafficserver/bin/traffic_line -r proxy.node.current_server_connections
