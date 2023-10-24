
#!/bin/sh

gitlab-runner register \
	--non-interactive \
	--url $GITLAB_URL \
	--token $GITLAB_REGISTRATION_TOKEN \
	--executor $EXECUTOR \
	--kubernetes-image $IMAGE \
	--kubernetes-namespace $NAMESPACE \
	&& gitlab-runner run;
