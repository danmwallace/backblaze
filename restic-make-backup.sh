#!/bin/bash

source /home/dwallace/Code/backblaze/.env

main() {
  restic -r "${B2_BUCKET}" backup /home/dwallace/Documents
  restic -r "${B2_BUCKET}" backup /home/dwallace/Code --exclude="**/.venv" --exclude="**/collections"

  # Notify healthchecks:
  curl -m 10 --retry 5 $B2_HEALTHCHECK_URL
}

main "$@"