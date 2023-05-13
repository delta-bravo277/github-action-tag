FROM node:16-alpine
LABEL "repository"="https://github.com/anothrNick/github-tag-action"
LABEL "homepage"="https://github.com/anothrNick/github-tag-action"

RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/script.sh"]
