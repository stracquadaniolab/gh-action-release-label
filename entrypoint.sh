#!/bin/sh

set -e

PREFIX=$1

COMMIT_COUNT=$(git rev-list --count HEAD)
CURRENT_DATE=$(date -u +"%Y.%m.%d")
LABEL="${PREFIX}${GITHUB_REF#refs/heads/}.${CURRENT_DATE}.${COMMIT_COUNT}"
echo ::set-output name=release_label::"${LABEL}"