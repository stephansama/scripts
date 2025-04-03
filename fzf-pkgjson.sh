#!/bin/bash

origin=$(git rev-parse --show-toplevel)

historyFile="$origin/node_modules/.package-json.history"

if [[ ! -f $historyFile ]]; then
	find "$origin" -type f -name 'package.json' \
		-not -path '*node_modules*' \
		-not -path '*.open-next*' \
		-not -path '*.next*' \
		-not -path '*.sst*' \
		-not -path '*.vitepress*' >>"$historyFile"
	echo
fi

current=$(cat "$historyFile")

query=$(
	echo "$current" |
		sed -e "s@$origin@.@g" -e "s@package.json@@g" |
		fzf |
		sed -e "s@^.@$origin@"
)

cd "$query" || return
