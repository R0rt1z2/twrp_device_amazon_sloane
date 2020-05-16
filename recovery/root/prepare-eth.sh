#!/sbin/sh

ifconfig eth0 up
busybox udhcpc -b eth0
true
