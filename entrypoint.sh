#!/bin/bash
set -e

user=decred
datadir="/home/${user}/.${user}"

if [[ $(echo "$1" | cut -c1) = "-" ]]; then
  echo "$0: assuming arguments for dcrd"

  set -- decred "$@"
fi

if [[ $(echo "$1" | cut -c1) = "-" ]] || [[ "$1" = "dcrd" ]]; then
  echo "Creating data directory ..."
  mkdir -p "$datadir"
  chmod 700 "$datadir"
  chown -R ${user} "$datadir"

  echo "$0: setting data directory to $datadir"

  set -- "$@" --datadir="$datadir"
fi

if [[ "$1" = "dcrd" ]] || [[ "$1" = "dcrwallet" ]] || [[ "$1" = "dcrctl" ]]; then
  echo "$@"
  exec su-exec ${user} "$@"
fi



exec "$@"
