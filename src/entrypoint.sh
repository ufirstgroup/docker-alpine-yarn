#!/bin/bash

if [ -z "$USER_ID" ]; then
  echo "USER_ID is required - you may use \$(id -u)"
  exit 1
fi

if [ -z "$GROUP_ID" ]; then
  echo "GROUP_ID is required - you may use \$(id -g)"
  exit 1
fi

# something resets HOME => setting it again
exec su-exec $USER_ID:$GROUP_ID env HOME=$HOMEDIR "$@"
