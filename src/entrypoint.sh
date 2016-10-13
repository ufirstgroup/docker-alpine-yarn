#!/bin/ash

if [ -z "$USER_ID" ]; then
  echo "USER_ID is required"
  exit 1
fi

# something resets HOME => setting it again
exec su-exec $USER_ID env HOME=$HOMEDIR "$@"
