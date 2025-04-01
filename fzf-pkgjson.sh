#!/bin/bash

origin=$(git rev-parse --show-toplevel)

query=$(
	find "$origin" -type f -name 'package.json' \
		-not -path '*node_modules*' \
		-not -path '*.next*' \
		-not -path '*.sst*' \
		-not -path '*.vitepress*' |
		sed -e "s@$origin@.@g" -e "s@package.json@@g" |
		fzf |
		sed -e "s@^.@$origin@"
)

cd "$query" || return
