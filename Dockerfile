FROM gitlab/gitlab-runner:alpine3.18-bleeding

ARG URL="https://gitlab.com/"
ARG REGISTRATION_TOKEN="Token"
ARG EXEC=shell

ENV GITLAB_URL=$URL
ENV GITLAB_REGISTRATION_TOKEN=$REGISTRATION_TOKEN
ENV EXECUTOR=$EXEC

COPY ./script.sh /
RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]

EXPOSE 8093
