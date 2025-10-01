#!/bin/bash

dir=${1:-$CODE}

query=$(
	find "$dir" -type d -mindepth 1 -maxdepth 1 | sed "s@$dir/@@g" | fzf \
		--ansi
)

if [[ -z $query ]]; then
	return
fi

cd "$dir/$query" || exit
