#!/bin/bash

P10K_INSTANT_PROMPT="${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

if [[ -r "$P10K_INSTANT_PROMPT" ]]; then
  source "$P10K_INSTANT_PROMPT"
fi

autoload -Uz promptinit && promptinit && prompt powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
