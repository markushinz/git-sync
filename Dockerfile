FROM alpine:3.11
WORKDIR /usr/src/git-sync
RUN apk add --no-cache git rsync
COPY git-sync.sh /usr/bin/git-sync
CMD ["git-sync"]
