#!/bin/sh   
#ats_netstat

case $1 in
	config)
		cat <<'EOM'
		graph_title ATS netstat
		graph_vlabel count
		etablished.label ESTABLISHED
		finwait2.label FIN_WAIT2
		timewait.label TIME_WAIT
		synrecv.label SYN_RECV
		finwait1.label FIN_WAIT1
		lastack.label LAST_ACK
		graph_category ATS
		EOM
	exit 0;;

esac
echo -n "etablished.value "
/bin/netstat -ant | grep 80 |grep ESTABLISHED | awk '{print $6}' |wc -l
echo -n "finwait2.value "
/bin/netstat -ant | grep 80 |grep FIN_WAIT2 | awk '{print $6}' |wc -l
echo -n "timewait.value "
/bin/netstat -ant | grep 80 |grep TIME_WAIT | awk '{print $6}' |wc -l
echo -n "synrecv.value "
/bin/netstat -ant | grep 80 |grep SYN_RECV | awk '{print $6}' |wc -l
echo -n "finwait1.value "
/bin/netstat -ant | grep 80 |grep FIN_WAIT1 | awk '{print $6}' |wc -l
echo -n "lastack.value "
/bin/netstat -ant | grep 80 |grep LAST_ACK | awk '{print $6}' |wc -l
