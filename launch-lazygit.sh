#!/bin/bash

export PATH="$HOME/.local/share/mise/shims:$PATH"

theme=$("$HOME/.config/scripts/theme.sh")

LG_CONFIG_FILE="$HOME/.config/lazygit/themes/"

if [[ $theme == 'Dark' ]]; then
	LG_CONFIG_FILE+="mocha.yml"
else
	LG_CONFIG_FILE+="latte.yml"
fi

export LG_CONFIG_FILE

lazygit
