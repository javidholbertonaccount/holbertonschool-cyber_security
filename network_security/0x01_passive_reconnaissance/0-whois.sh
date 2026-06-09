#!/bin/bash
whois "$1" | awk 'BEGIN{FS=": "} /^(Registrant|Admin|Tech)/ {
    sub(/\rT/, "", $2)
    if ($1 ~ /Street/) {
        print $1 "," $2 " "
    } else if ($1 ~ /Ext/) {
        sub(/:$/, "", $1)
        print $1 ":," $2
    } else {
        print $1 "," $2
    }
}'
