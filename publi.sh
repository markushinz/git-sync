#!/usr/bin/env bash
version=${1:-"1.0.0"}

set -e

git fetch
git tag "v$version" -m "v$version"

docker build -t "markushinz/git-sync:$version" \
  -t "markushinz/git-sync:latest" .
docker push "markushinz/git-sync:$version"
docker push "markushinz/git-sync:latest"

git push origin "v$version"
