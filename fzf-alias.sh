#!/bin/zsh

source "$HOME/.zshrc"

# based on: https://github.com/maciagmax/maciagmax/blob/main/scripts/fzf-alias.sh

selected=$(alias | sed 's/^alias //' | sed 's/=/ > /' | tr -d "'" | fzf)

if [[ -n "$selected" ]]; then
	cmd=$(echo "$selected")
	echo "$cmd"
fi
