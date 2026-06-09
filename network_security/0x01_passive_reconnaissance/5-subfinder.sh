#!/bin/bash
subfinder -d "$1" -silent -active -ip > "$1.txt"
awk -F, '{print $1}' "$1.txt"
awk -F, '{print $1 "," $2}' "$1.txt" > tmp_sub_clean && mv tmp_sub_clean "$1.txt"
