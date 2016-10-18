FROM mhart/alpine-node:6.8.0

MAINTAINER Jean-Luc Geering <jeanluc.geering@ufirstgroup.com>

# install packages (su-exec and various build dependencies)

RUN apk update && apk upgrade && apk add \
  g++ \
  make \
  python \
  su-exec \
  git

# install yarn

ENV YARN_VERSION 0.15.1
RUN npm install --global yarn@${YARN_VERSION}

USER root

WORKDIR "/workdir"

ENV WORKDIR "/workdir"
ENV HOMEDIR "/homedir"

VOLUME ["/workdir", "/homedir"]

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["yarn"]
