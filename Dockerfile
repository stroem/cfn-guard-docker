FROM alpine:3.13.5

ENV VERSION 1.0.0

RUN apk --update add --no-cache cargo
RUN cargo install cfn-guard --version ${VERSION}
RUN mv /root/.cargo/bin/cfn-guard /usr/local/bin
RUN apk del cargo