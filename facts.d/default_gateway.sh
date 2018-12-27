#!/bin/bash
/bin/echo default_gateway=`/sbin/ip route | /bin/grep "default" | /bin/cut -d " " -f3`
