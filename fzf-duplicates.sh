#!/bin/sh

query=$(fzf)

sort "$query" | uniq --count --repeated
