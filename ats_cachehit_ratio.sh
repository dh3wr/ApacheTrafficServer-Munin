#!/bin/sh
#ats_cachehit_ratio

case $1 in
	config)
		cat <<'EOM'
		graph_title ATS Cache Hit Ratio
		graph_vlabel %
		graph_scale no
		cache_hit.label Cache Hit avg 10s %
		cache_hit_mem.label Cache Mem Hit avg 10s %
		hostdb_hit.label Host DB Hit avg 10s %
		graph_category ATS
		EOM
		exit 0;;

esac
cachehit=`/usr/local/trafficserver/bin/traffic_line -r proxy.node.cache_hit_ratio_avg_10s`
cachehitmem=`/usr/local/trafficserver/bin/traffic_line -r proxy.node.cache_hit_mem_ratio_avg_10s`
hostdbhit=`/usr/local/trafficserver/bin/traffic_line -r proxy.node.hostdb.hit_ratio_avg_10s`
cachehitratio=`echo $cachehit \* 100 |bc`
cachehitmemratio=`echo $cachehitmem \* 100 |bc`
hostdbhit=`echo $hostdbhit \* 100 |bc`
echo -n "cache_hit.value "
echo $cachehitratio
echo -n "cache_hit_mem.value "
echo $cachehitmemratio
echo -n "hostdb_hit.value "
echo $hostdbhit