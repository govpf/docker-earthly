FROM docker:29-cli

LABEL govpf.fromimage="docker:29-cli"
LABEL govpf.category="build"

ENV EARTHLY_VERSION=v0.8.16

RUN apk add --no-cache git wget \
    && wget https://github.com/earthly/earthly/releases/download/${EARTHLY_VERSION}/earthly-linux-amd64 \
       -O /usr/local/bin/earthly \
    && chmod +x /usr/local/bin/earthly

CMD ["earthly"]