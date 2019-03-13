FROM alpine:3.8
LABEL maintainer="Don Bowman <don@agilicus.com>"

RUN apk add gettext

ENTRYPOINT ["/usr/bin/envsubst"]
