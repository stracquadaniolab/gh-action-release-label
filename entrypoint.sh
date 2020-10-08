#!/bin/sh

set -e

PREFIX=$1

CURRENT_DATE=$(date -u +"%Y-%m-%d")
MESSAGE=$(git log --format=%B -n 1 ${GITHUB_SHA})
LABEL="${PREFIX}-${CURRENT_DATE}-r${GITHUB_RUN_NUMBER}"

echo ::set-output name=release_label::"${LABEL}"
echo ::set-output name=release_message::"${MESSAGE}"