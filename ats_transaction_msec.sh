#!/bin/sh
#ats_transaction_msec
case $1 in
	config)
		cat <<'EOM'
		graph_title ATS Transaction msec avg_10s
		graph_vlabel msec
		cache_hit_fresh.label hit fresh msec avg 10s
		cache_hit_revalidated.label hit revalidated msec avg 10s
		cache_miss_cold.label miss cold msec avg 10s
		cache_miss_not_cacheable.label miss not cacheable msec avg 10s
		cache_miss_changed.label miss changed msec avg 10s
		cache_miss_client_no_cache.label miss client no cache msec avg 10s
		cache_errors_connect_failed.label errors connect failed msec avg 10s
		cache_errors_possible_aborts.label errors possible aborts msec avg 10s
		cache_errors_pre_accept_hangups.label errors_pre_accept_hangups msec avg 10s
		cache_errors_early_hangups.label errors early hangups msec avg 10s
		cache_errors_empty_hangups.label errors empty hangups msec avg 10s
		cache_errors_other.label errors other avg msec 10s
		cache_other_unclassified.label other unclassified msec avg 10s
		graph_category ATS
		EOM
	exit 0;;
	
esac
echo -n "cache_hit_fresh.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.hit_fresh
echo -n "cache_hit_revalidated.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.hit_revalidated
echo -n "cache_miss_cold.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.miss_cold
echo -n "cache_miss_not_cacheable.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.miss_not_cacheable
echo -n "cache_miss_changed.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.miss_changed
echo -n "cache_miss_client_no_cache.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.miss_client_no_cache
echo -n "cache_errors_connect_failed.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.errors.connect_failed
echo -n "cache_errors_possible_aborts.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.errors.possible_aborts
echo -n "cache_errors_pre_accept_hangups.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.errors.pre_accept_hangups
echo -n "cache_errors_early_hangups.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.errors.early_hangups
echo -n "cache_errors_empty_hangups.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.errors.empty_hangups
echo -n "cache_errors_other.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.errors.other
echo -n "cache_other_unclassified.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_msec_avg_10s.other.unclassified
