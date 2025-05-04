#!/bin/bash

theme=$("$HOME/.config/scripts/theme.sh")

if [[ $theme == 'Dark' ]]; then
	source "$HOME/.config/fzf/mocha.sh"
else
	source "$HOME/.config/fzf/latte.sh"
fi

fzf
