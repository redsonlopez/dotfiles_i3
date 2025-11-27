#!/usr/bin/env bash

# Mata barras antigas
killall -q polybar

# Espera sair
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Inicia a barra
polybar main &

