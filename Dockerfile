# TLDR docker container, with updated pages
FROM node:9.6-alpine

RUN npm install -g tldr && \
    tldr --update && \
    echo '{"platform": "linux"}' > /root/.tldrrc
    
CMD tldr
