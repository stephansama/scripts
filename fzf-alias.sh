#!/bin/zsh

source "$HOME/.zshrc"

# based on:
# https://github.com/maciagmax/maciagmax/blob/3a08ac498731c0897c6bd068eaded88060865c67/scripts/fzf-alias.sh

selected=$(alias | sed 's/^alias //' | sed 's/=/ > /' | tr -d "'" | fzf)

if [[ -n "$selected" ]]; then
	cmd=$(echo "$selected")
	echo "$cmd"
fi
