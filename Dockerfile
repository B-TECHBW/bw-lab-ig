FROM jekyll/jekyll:latest

RUN npm install -g fsh-sushi

WORKDIR /ig

RUN  apk update \
  && apk upgrade \
  && apk add ca-certificates \
  && update-ca-certificates \
  && apk add --update coreutils && rm -rf /var/cache/apk/*   \ 
  && apk add --update openjdk11 tzdata curl unzip bash \
  && apk add --no-cache nss \
  && rm -rf /var/cache/apk/*

ADD ./_updatePublisher.sh ./_updatePublisher.sh
ADD ./_genonce.sh ./_genonce.sh
ADD ./fsh.ini ./fsh.ini
ADD ./ig.ini ./ig.ini
ADD ./sushi-config.yml ./sushi-config.yml
ADD ./input ./input

VOLUME [ "/ig/output" ]

RUN /ig/_updatePublisher.sh -y

ENTRYPOINT [ "/ig/_genonce.sh" ]