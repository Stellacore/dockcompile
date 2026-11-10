#!/usr/bin/bash

#
# Start container with SSHD listening (use with ssh connect)
# - container starts, detaches, runs sshd, waits until killed
# - mounts various build directories
#

docker run -d \
	-v /agents/aisrc/:/aisrc/ \
	-v /agents/aiout/:/aiout/ \
	--name ssh-picode-gcc16.2 \
	ssh-picode-gcc16.2 \
	;

