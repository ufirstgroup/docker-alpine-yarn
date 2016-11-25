FROM ufirstgroup/alpine-npm:6.8.1_3.10.8

MAINTAINER Jean-Luc Geering <jeanluc.geering@ufirstgroup.com>
MAINTAINER Michael Ruoss <michael.ruoss@ufirstgroup.com>

# install packages (su-exec and various build dependencies)

RUN apk update && apk upgrade && apk add \
  g++ \
  make \
  python \
  git

# install yarn

ENV YARN_VERSION 0.17.8
RUN npm install --global yarn@${YARN_VERSION}

USER root

WORKDIR "/workdir"

ENV WORKDIR "/workdir"
ENV HOMEDIR "/homedir"

VOLUME ["/workdir", "/homedir"]

COPY entrypoint.sh /

ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]
CMD ["yarn"]
