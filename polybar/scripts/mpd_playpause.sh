#!/bin/bash
state=$(mpc status | sed -n '2p' | awk '{print $1}')
[ "$state" = "[playing]" ] && echo "" || echo ""

