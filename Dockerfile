FROM vmlellis/x11ubuntu
MAINTAINER Victor Lellis <vmlellis@gmail.com>

USER root

RUN apt-get update && \
    apt-get install -y firefox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER xclient
CMD ["/usr/bin/firefox"]
