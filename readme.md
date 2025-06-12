# Backblaze Backups

These are some basic scripts to backup files to Backblaze using Restic.

## Setup

* Clone directory and modify `restic-make-backup.sh` as necessary.
* Place a `.env` in this folder with the appropriate variables (below)
* Set up a systemd service + timer to run the script by placing them in `/etc/systemd/system` and enabling the `.timer`

The `.timer` will kick off the script and will also ping healthchecks.

## Variables

Place these in a `.env` in the `backblaze` folder:
```
# Add these to your .env
export B2_ACCOUNT_ID=""
export B2_ACCOUNT_KEY=""
export B2_BUCKET=""
export B2_HEALTHCHECK_URL=""
export RESTIC_PASSWORD=""
```

# TO DO: Set up with password-store

## Using Pass

See: https://wbg.gg/blog/pass/

### OpenSUSE Requirements

* Install `rng-tools`, via `zypper install rng-tools`

### Setting up Password Store

1. Create a gpg key, `gpg --full-generate-key`

