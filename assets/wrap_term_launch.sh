#!/usr/bin/env sh

cat ~/.local/state/aura/sequences.txt 2>/dev/null

exec "$@"
