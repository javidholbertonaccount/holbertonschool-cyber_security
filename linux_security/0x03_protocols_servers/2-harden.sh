#!/bin/bash
find / -type d -perm -002 -exec chmod o-w {} \; -print 2>/dev/null
