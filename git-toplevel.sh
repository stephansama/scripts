#!/bin/bash

current="$(pwd)"

goto_toplevel() {
	cd "$(git rev-parse --show-toplevel)" || return
}

goto_toplevel

if [[ "$current" == "$(pwd)" ]]; then
	cd ..
	goto_toplevel
fi
