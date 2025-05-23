#!/bin/bash

query=$(
	find "$CODE" -type d -mindepth 1 -maxdepth 1 | sed "s@$CODE/@@g" | fzf \
		--ansi
)

if [[ -z $query ]]; then
	return
fi

cd "$CODE/$query" || exit
