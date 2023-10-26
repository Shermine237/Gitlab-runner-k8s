
#!/bin/sh

rm -f /etc/gitlab-runner/config.toml;

gitlab-runner register \
	--non-interactive \
	--url $GITLAB_URL \
	--token $GITLAB_REGISTRATION_TOKEN \
	--executor $EXECUTOR \
	--kubernetes-image $IMAGE \
	--kubernetes-helper-image $HELPER_IMAGE \
	--kubernetes-namespace $NAMESPACE \
	--clone-url $CLONE_URL \
	&& gitlab-runner run;
