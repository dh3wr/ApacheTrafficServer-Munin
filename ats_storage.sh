#!/bin/sh
#ats_storage
case $1 in
	config)
		cat <<'EOM'
		graph_title ATS storage
		graph_vlabel bytes
		used_disk.label disk used
		total_disk.label disk total
		graph_category ATS
		EOM
	exit 0;;
esac
echo -n "used_disk.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.process.cache.volume_0.bytes_used
echo -n "total_disk.value "
/usr/local/trafficserver/bin/traffic_line -r proxy.process.cache.volume_0.bytes_total