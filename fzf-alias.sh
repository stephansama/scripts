#!/bin/zsh

source "$HOME/.zshrc"

selected=$(alias | sed 's/^alias //' | sed 's/=/ > /' | tr -d "'" | fzf)

# If an alias was selected, echo it
if [[ -n "$selected" ]]; then
	cmd=$(echo "$selected")
	echo "$cmd"
fi
