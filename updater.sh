#!/bin/bash

# Use this script to update commit SHA on an older tag version to avoid updating all dependent projects
# For instance, v4 can be the latest release with current commit, but v3 can be reset to the current commit SHA
# Example: commit 9af9b62216863744421ab5fb81fbbcac58f5d055 (tag: v4, tag: v3)

git pull > /dev/null 2>&1

# Get latest commit SHA and use it as default value
latest_sha=$(git rev-parse HEAD)
COMMIT_SHA=${COMMIT_SHA:-"$latest_sha"}

# Get latest tag and use it as a default value
# `git describe --tags --abbrev=0` will give the most recent tag that is directly reachable from the current commit
latest_tag=$(git tag --sort=-v:refname | head -n 1)
GIT_TAG=${GIT_TAG:-"$latest_tag"}

# Delete git tag from both local and origin
git tag -d "$GIT_TAG"
git push --delete origin "$GIT_TAG"

# Create a new tag with the desired commit SHA and push to origin
git tag "$GIT_TAG" "$COMMIT_SHA"
git push origin "$GIT_TAG"
