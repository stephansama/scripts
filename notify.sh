#!/bin/bash

title=$([[ -n "$2" ]] && echo "$2" || echo "message")

osascript -e "display notification \"$1\" with title \"$title\""
