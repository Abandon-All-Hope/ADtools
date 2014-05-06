#!/bin/bash
MAXGID=`getent group|awk -F: '{print $3}'|sort -n|grep ^53|tail -1`
NEXTGID=`expr $MAXGID + 1`
if test -z "`getent group $NEXTGID`" ; then echo $NEXTGID ; fi
