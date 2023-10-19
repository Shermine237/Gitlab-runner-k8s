#!/bin/sh
#
gitlab-runner register \
  --non-interactive \
  --url "$GITLAB_URL" \
  --token "$GITLAB_REGISTRATION_TOKEN" \
  --executor "$EXECUTOR" \
  --docker-image "$DOCKER_IMAGE" \
  --description "gitlab-runner" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"
