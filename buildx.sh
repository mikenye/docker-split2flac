#!/usr/bin/env sh
#shellcheck shell=sh

set -x

REPO=mikenye
IMAGE=split2flac
PLATFORMS="linux/amd64"

docker context use x86_64
export DOCKER_CLI_EXPERIMENTAL="enabled"
docker buildx use homecluster

# Build & push latest
docker buildx build -t "${REPO}/${IMAGE}:latest" --compress --push --platform "${PLATFORMS}" .

# Get split2flac version
VERSION=$(docker run --rm "${REPO}/${IMAGE}:latest" --version | head -1 | cut -d ":" -f 2 | tr -d " " | sed 's/\r$//')
# Build & push version specific
docker buildx build -t "${REPO}/${IMAGE}:v${VERSION}" --compress --push --platform "${PLATFORMS}" .
