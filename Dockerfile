# TLDR docker container, with updated pages
FROM ubuntu:17.10

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y npm && \
    npm install -g tldr && \
    tldr --update && \
    echo '{"platform": "linux"}' > /root/.tldrrc && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/log/* && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/lib/cache/*

CMD tldr
