#!/bin/bash
#
# based on this github comment:
# https://github.com/Infisical/infisical/issues/1612#issuecomment-2121855722

# Check if the file path and environment arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Usage: $0 path_to_env_file environment"
	exit 1
fi

# Path to your .env file from the first argument
ENV_FILE="$1"

# Environment from the second argument
ENV="$2"

# Check if the file exists
if [ ! -f "$ENV_FILE" ]; then
	echo "File not found: $ENV_FILE"
	exit 1
fi

# Read each line in the .env file
while IFS= read -r line || [ -n "$line" ]; do
	# Skip empty lines and lines starting with '#'
	if [ -n "$line" ] && [ "${line:0:1}" != "#" ]; then
		# Set the secret in Infisical
		infisical secrets set "$line" --env "$ENV"
	fi
done <"$ENV_FILE"
