#!/bin/sh

set -e

PREFIX=$1

COMMIT_COUNT=$(git rev-list HEAD | wc -l)

echo ::set-output name=release_label::"${PREFIX}${GITHUB_REF#refs/heads/}-v${COMMIT_COUNT}"