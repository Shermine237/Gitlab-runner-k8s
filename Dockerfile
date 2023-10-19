FROM gitlab/gitlab-runner:alpine3.18-bleeding

ARG URL="https://gitlab.com/"
ARG REGISTRATION_TOKEN="Token"
ARG EXEC=docker
ARG IMAGE="alpine:3.18"

ENV GITLAB_URL=$URL
ENV GITLAB_REGISTRATION_TOKEN=$REGISTRATION_TOKEN
ENV EXECUTOR=$EXEC
ENV DOCKER_IMAGE=$IMAGE

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8093
