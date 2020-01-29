FROM governmentpaas/cf-cli

LABEL maintainer="Joe Bell<joe.bell.1329@gmail.com>"

ENV PACKAGES "unzip curl openssl ca-certificates git libc6-compat bash jq gettext make bash openssh nodejs yarn"

RUN apk update

RUN apk add --no-cache --virtual .build-deps
RUN apk add bash
RUN apk add openssh
RUN apk add nodejs
RUN apk add yarn

RUN ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime

CMD ["/bin/bash"]