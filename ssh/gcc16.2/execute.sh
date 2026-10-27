#!/usr/bin/bash

#
# Run specific command inside docker container
# - container starts, runs command, is removed after done
# - in-docker user same as username running this script
# - mounts various build directories
#

if [ "$#" -lt 1 ]; then
	echo "Expect command to run in container"
	echo "  Command is formed by *entire* argument line after script name"
	exit
fi

COMMAND="$*"

echo "COMMAND: ${COMMAND}"

docker run --rm \
	-p 2222:22 \
	--user ${USER} \
	-v /tmpBuild:/tmpBuild/ \
	-v /tmpLocal:/tmpLocal/ \
	-v ${HOME}/repos/:/repos \
	--name ssh-gcc16.2 \
	ssh-gcc16.2 \
	bash -c "${COMMAND}" \
	;

exit

