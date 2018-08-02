#!/bin/sh
for i in 1 2 3 4 5
do
        echo node_name node$i
        echo -n node_address ""
        var=`ping node_$i -c 1 | grep from | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`
        echo $var:1883
done
