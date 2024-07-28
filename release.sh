#!/bin/bash

# Update version in pyproject.toml
# Needed until we have a real handler for releases.

# Install/Update python3 build module
poetry install

# Build
poetry build

# Add pblush token (only needed once)
poetry config pypi-token.pypi <your-token>

poetry publish

# Commit ChangeLog and retag (so the tag points to the ChangeLog commit)
git add ChangeLog
git commit -m "Release $version"
git tag -d $version
git tag -a "$version" -m "Release $version"

# Push to remote repo
git push origin main --follow-tags
