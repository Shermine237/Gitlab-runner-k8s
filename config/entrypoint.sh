
#!/bin/sh

gitlab-runner register \
	--non-interactive \
	--url $GITLAB_URL \
	--token $GITLAB_REGISTRATION_TOKEN \
	--executor $EXECUTOR \
	&& gitlab-runner run;
