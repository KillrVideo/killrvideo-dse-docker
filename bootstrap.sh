#!/bin/sh
set -e

# TODO: Bootstrapping schema and config
echo 'Bootstrapping KillrVideo resources'

# Run the main entrypoint script from the base image
exec /entrypoint.sh "$@"