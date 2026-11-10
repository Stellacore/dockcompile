#!/usr/bin/bash

#
# Run docker container with interactive (bash) shell
# - container starts, provides shell, is removed after exit
# - in-docker user same as username running this script
# - mounts various build directories
#

docker run -it --rm \
	-v /agents/aisrc/:/aisrc/ \
	-v /agents/aiout/:/aiout/ \
	--name ssh-picode-gcc16.2 \
	--hostname DOCKER \
	--user ${USER} \
	ssh-picode-gcc16.2 \
	bash \
	;
