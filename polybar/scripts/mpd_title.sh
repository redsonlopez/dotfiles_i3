#!/bin/bash
t=$(mpc current)
N=15
[ ${#t} -gt $N ] && t="${t:0:$N}…" 
echo "$t"

