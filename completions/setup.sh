#!/bin/bash
# shellcheck disable=1090

function setup_completion() {
	local cmd="$1"
	local generation_cmd="$2"
	local completion_file="$HOME/.config/scripts/completions/${cmd}.sh"

	if type "$cmd" &>/dev/null; then
		if [ ! -f "$completion_file" ]; then
			mkdir -p "$(dirname "$completion_file")"
			eval "$generation_cmd" >"$completion_file"
		fi

		source "$completion_file"
	fi
}

# https://github.com/junegunn/fzf?tab=readme-ov-file#setting-up-shell-integration
setup_completion "fzf" "fzf --zsh"

# https://docs.atuin.sh/integrations/
setup_completion "atuin" "atuin gen-completions --shell zsh"

# https://pnpm.io/completion
setup_completion "pnpm" "pnpm completion bash"

# https://docs.docker.com/engine/cli/completion/
setup_completion "docker" "docker completion zsh"

# https://docs.astral.sh/uv/reference/cli/#uv-generate-shell-completion
setup_completion "uv" "uv generate-shell-completion zsh"
