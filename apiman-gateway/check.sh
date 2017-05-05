#!/bin/bash
exec 3<>/dev/tcp/127.0.0.1/6379 && echo -e "KEYS *\r\n" >&3 && head -c 7 <&3 | grep networks