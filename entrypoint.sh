#!/bin/sh

set -e

PREFIX=$1

CURRENT_DATE=$(date -u +"%Y.%m.%d")
LABEL="${PREFIX}${GITHUB_REF#refs/heads/}.${CURRENT_DATE}.${GITHUB_RUN_NUMBER}"
echo ::set-output name=release_label::"${LABEL}"