FROM node:16-alpine
LABEL "repository"="https://github.com/delta-bravo277/github-action-tag"
LABEL "homepage"="https://github.com/delta-bravo277/github-action-tag"
LABEL "maintainer"="Custom Action"

RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
