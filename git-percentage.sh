#!/bin/sh

branch=$(git rev-parse --abbrev-ref HEAD)

output=$(git diff ORIG_HEAD "$branch" --shortstat)

echo "$output" | while IFS=, read -r _ additions deletions; do
	echo "$additions"
	echo "$deletions"
done | sed 's/[^0-9]*//g' | paste -sd- - | bc
