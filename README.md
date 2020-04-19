# git-sync

[`markushinz/git-sync:1.0.0`](https://hub.docker.com/r/markushinz/git-sync/tags)

A clean & simple alternative to [kubernetes/git-sync](https://github.com/kubernetes/git-sync) to sync git repositories into docker-compose or Kubernetes volumes. It will continiously pull a repository into a volume and overwrite any modifications other containers may have performed.

| Environment variable | explaination |required | example |
|---|---|---|---|
| `GIT_REPOSITORY` |  https or ssh url to the git repository | yes | `https://token@github.com/markushinz/private-repository.git` |
| `GIT_BRANCH` |  remote branch name | no | `master` (default) |
| `SYNC_INTERVAL` |  time interval between pulls in seconds | no | `60 `(default) |

Have a look at [docker-compose.yaml](docker-compose.yaml) and [k8s.yaml](k8s.yaml) on how to use it.
