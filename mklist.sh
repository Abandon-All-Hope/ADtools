#!/bin/bash
IFS='
'
if test -z "$1" ; then echo $0 listname ; exit ; fi
for i in `cat $1` ; do echo $i|awk -F: '{print "mkhpcuser "$1" \""$2"\" \""$3"\" "$4" "$5 }' ; done

