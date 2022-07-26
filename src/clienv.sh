#!/bin/bash

# shellcheck disable=SC2066,SC1090

# Source your environment variables when running commands from the CLI
# Usage: clienv make test

# Set all vars sourced here as exported
set -a

# Source environment variables
ENVFILES=".env" # Separate entries with spaces
for envfile in "$ENVFILES" ; do
    [ -f "$envfile" ] && . "$envfile"
done

# Execute the remaining commands
exec "$@"
