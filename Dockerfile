FROM docker:20-git
ENV EARTHLY_VERSION v0.5.15
RUN wget https://github.com/earthly/earthly/releases/download/${EARTHLY_VERSION}/earthly-linux-amd64 -O /usr/local/bin/earthly \
    && chmod +x /usr/local/bin/earthly
CMD earthly
