#!/usr/bin/env bash
# This file is part of Flask-Multipass-Authentik.
# Copyright (C) 2023 - 2025 RobotHanzo & CERN & UNCONVENTIONAL

set -e

VERSION=$(grep '^version =' pyproject.toml | cut -d '"' -f 2)
TAG="v${VERSION}"

git tag "${TAG}" -m "Release ${TAG}."
echo "Tag ${TAG} was created"
