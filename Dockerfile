FROM alpine:latest
RUN apk add --update curl bash jq util-linux && rm -rf /var/cache/apk/*
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl"]
