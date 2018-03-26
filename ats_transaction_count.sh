#!/bin/sh
#ats_transaction_count
	case $1 in
	config)
		cat <<'EOM'
		graph_title ATS Transaction Counts avg_10s
		graph_vlabel count
		cache_hit_fresh.label hit fresh avg 10s
		cache_hit_revalidated.label hit revalidated avg 10s
		cache_miss_cold.label miss cold avg 10s
		cache_miss_not_cacheable.label miss not cacheable avg 10s
		cache_miss_changed.label miss changed avg 10s
		cache_miss_client_no_cache.label miss client no cache avg 10s
		cache_errors_connect_failed.label errors connect failed avg 10s
		cache_errors_aborts.label errors aborts avg 10s
		cache_errors_possible_aborts.label errors possible aborts avg 10s
		cache_errors_pre_accept_hangups.label errors_pre_accept_hangups avg 10s
		cache_errors_early_hangups.label errors early hangups avg 10s
		cache_errors_empty_hangups.label errors empty hangups avg 10s
		cache_errors_other.label errors other avg 10s
		cache_other_unclassified.label other unclassified avg 10s
		graph_category ATS
		EOM
	exit 0;;
esac
echo -n "cache_hit_fresh.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.hit_fresh
echo -n "cache_hit_revalidated.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.hit_revalidated
echo -n "cache_miss_cold.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.miss_cold
echo -n "cache_miss_not_cacheable.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.miss_not_cacheable
echo -n "cache_miss_changed.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.miss_changed
echo -n "cache_miss_client_no_cache.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.miss_client_no_cache
echo -n "cache_errors_connect_failed.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.errors.connect_failed
echo -n "cache_errors_aborts.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.errors.aborts
echo -n "cache_errors_possible_aborts.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.errors.possible_aborts
echo -n "cache_errors_pre_accept_hangups.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.errors.pre_accept_hangups
echo -n "cache_errors_early_hangups.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.errors.early_hangups
echo -n "cache_errors_empty_hangups.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.errors.empty_hangups
echo -n "cache_errors_other.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.errors.other
echo -n "cache_other_unclassified.value " 
/usr/local/trafficserver/bin/traffic_line -r proxy.node.http.transaction_counts_avg_10s.other.unclassified
