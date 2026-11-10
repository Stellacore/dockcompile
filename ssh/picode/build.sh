#!/usr/bin/bash

FROM_TEMPLATE=ssh-gcc16.2:latest
uNAME="$(id -nu)"
echo "Building from templ: ${FROM_TEMPLATE}"
echo "Building with username: ${uNAME}"

uNAME="$(id -nu)"
echo "Building with  user: ${uNAME}"
docker build \
    --build-arg USER_NAME=${uNAME} \
	--build-arg FROM_TEMPLATE="${FROM_TEMPLATE}" \
	--file ../../dockerfiles/Dockerfile_picode \
	-t ssh-picode-gcc16.2 \
	. \
	;

#	--debug build \
#	--no-cache \
