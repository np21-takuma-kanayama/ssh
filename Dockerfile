FROM alpine
RUN apk add --no-cache openssh-client
ENTRYPOINT [ "ssh" ]
