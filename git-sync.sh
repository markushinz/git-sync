#!/usr/bin/env sh
GIT_REPOSITORY=${GIT_REPOSITORY:-"no git repository specified"}
GIT_BRANCH=${GIT_BRANCH:-"master"}
SYNC_INTERVAL=${SYNC_INTERVAL:-"60"}

set -e

rm -rf repository
git clone "$GIT_REPOSITORY" repository
cd repository
git checkout "$GIT_BRANCH"
while true
do
	git pull
	rsync -av --delete . /mnt/git-sync
	touch ../healthy
    echo "Waiting for $SYNC_INTERVAL seconds..."
	sleep "$SYNC_INTERVAL"
done
