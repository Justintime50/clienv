#!/bin/bash

# shellcheck disable=SC2066,SC1090

# Source your environment variables when running commands from the CLI
# Usage: clienv make test

# Export all env vars found for use by CLI commands
set -a

# Source environment variables
ENVFILES=".env" # Separate entries with spaces
for envfile in "$ENVFILES"; do
    while true; do
        if [ -f "$envfile" ]; then
            . "$envfile"
            break
        else
            if [ "$(pwd)" == "/" ]; then
                # If we arrive at the root of the filesystem, stop searching for env files
                break
            else
                cd .. || exit 1
            fi
        fi
    done
done

# Execute the remaining commands
exec "$@"
