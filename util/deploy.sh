#!/bin/bash

set -u
set -e

DEST=quinoa.blizinski.pl:maciej.blizinski.pl

helpmsg() {
  echo "$0 [ deploy | test ]"
}

case "${1:-}" in
  deploy)
    hugo --theme="${THEME}" --cleanDestinationDir
    rsync -p -r --delete public/ "${DEST}"
    ;;
  test)
    hugo -w -D -F --theme="${THEME}" --baseUrl="${HOSTNAME}" server
    ;;
  *)
    helpmsg >&2
    exit 1
    ;;
esac
