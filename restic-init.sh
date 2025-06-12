#!/bin/bash

source /home/dwallace/Code/backblaze/.env

restic -r "${B2_BUCKET}" init