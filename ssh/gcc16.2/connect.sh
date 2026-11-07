#!/usr/bin/bash

#
# Run docker container with interactive (bash) shell
# - container is started, provides shell, is removed after exit
# - in-docker username same as username starting this script
# - mounts various build related directories
#

docker run -it --rm \
	--user ${USER} \
	-v /tmpBuild:/tmpBuild/ \
	-v /tmpLocal:/tmpLocal/ \
	-v ${HOME}/repos/:/repos \
	--name ssh-gcc16.2 \
	--hostname DOCKER \
	ssh-gcc16.2 \
	bash \
	;

exit

