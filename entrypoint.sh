#!/bin/sh

set -e

PREFIX=$1

echo ::set-output name=release_label::"${PREFIX}${GITHUB_REF#refs/heads/}"