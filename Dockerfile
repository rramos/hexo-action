FROM node:22-slim

LABEL version="1.0.5"
LABEL repository="https://github.com/rramos/hexo-action"
LABEL homepage="https://rramos.github.io"
LABEL maintainer="Rui Ramos <rui.ms.ramos@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
