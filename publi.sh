#!/usr/bin/env bash
version=${1:-"1.0.0"}

set -e

git fetch
git tag "v$version" -m "v$version"

docker build -t "docker.pkg.github.com/markushinz/git-sync/git-sync:$version" \
  -t "docker.pkg.github.com/markushinz/git-sync/git-sync:latest" .
docker push "docker.pkg.github.com/markushinz/git-sync/git-sync:$version"
docker push "docker.pkg.github.com/markushinz/git-sync/git-sync:latest"

git push origin "v$version"
