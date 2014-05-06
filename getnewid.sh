#!/bin/bash
MAXUID=`getent passwd|awk -F: '{print $3}'|sort -n|grep ^37|tail -1`
NEXTUID=`expr $MAXUID + 1`
if test -z "`getent passwd $NEXTUID`" ; then echo $NEXTUID ; fi
