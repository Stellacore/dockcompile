#!/usr/bin/bash

#
# Start container with SSHD listening (use with ssh connect)
# - container starts, detaches, runs sshd, waits until killed
# - mounts various build directories
#

docker run -d \
	-p 2222:22 \
	-v /tmpBuild:/tmpBuild/ \
	-v /tmpLocal:/tmpLocal/ \
	-v ${HOME}/repos/:/repos \
	--name ssh-gcc16.2 \
	ssh-gcc16.2

