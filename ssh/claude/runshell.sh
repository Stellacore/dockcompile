#!/usr/bin/bash

#
# Run docker container with interactive (bash) shell
# - container starts, provides shell, is removed after exit
# - in-docker user same as username running this script
# - mounts various build directories
#

docker run -it --rm \
	-p 2222:22 \
	--user ${USER} \
	-v /tmpBuild:/tmpBuild/ \
	-v /tmpLocal:/tmpLocal/ \
	-v ${HOME}/repos/:/repos \
	--name ssh-claude-gcc16.2 \
	ssh-claude-gcc16.2 \
	bash \
	;

exit

