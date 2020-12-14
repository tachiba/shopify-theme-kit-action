FROM alpine

RUN apk update

# https://shopify.github.io/themekit/
RUN apk add --no-cache python2 ca-certificates curl && \
    curl -s https://shopify.github.io/themekit/scripts/install.py | python && \
    apk del curl

# https://help.github.com/en/actions/building-actions/creating-a-docker-container-action
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
