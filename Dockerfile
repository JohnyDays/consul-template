FROM gliderlabs/alpine

RUN apk --update add curl bash

ADD ./bin/consul-template /bin/consul-template

ADD https://get.docker.com/builds/Linux/x86_64/docker-latest /bin/docker
RUN chmod +x /bin/docker

ENV DOCKER_HOST unix:///tmp/docker.sock

ENTRYPOINT ["/bin/consul-template"]
