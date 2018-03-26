#!/bin/sh
#ats_server error
case $1 in
	config)
		cat <<'EOM'
		graph_title ATS Transaction error abort msec avg_10s
		graph_vlabel msec
		cache_errors_aborts.label errors aborts msec avg 10s
		graph_category ATS
		EOM
	exit 0;;
esac
echo -n "cache_errors_aborts.value "
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.errors.aborts
