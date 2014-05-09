#/bin/bash

for var in OU URI GROUPADD1 GROUPADD2 ; do
eval `egrep ^${var}= moduser.cfg`
done
echo $OU
echo $URI
echo $GROUPADD1
echo $GROUPADD2
