#!/bin/sh

branch=$(git rev-parse --abbrev-ref HEAD)

output=$(git diff ORIG_HEAD "$branch" --shortstat)

echo "$output"
