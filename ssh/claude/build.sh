#!/usr/bin/bash

FROM_TEMPLATE=ssh-gcc16.2:latest
uNAME="$(id -nu)"
echo "Building from templ: ${FROM_TEMPLATE}"
echo "Building with username: ${uNAME}"

uNAME="$(id -nu)"
echo "Building with  user: ${uNAME}"
docker --debug build \
    --build-arg USER_NAME=${uNAME} \
	--build-arg FROM_TEMPLATE="${FROM_TEMPLATE}" \
	--file ../../dockerfiles/Dockerfile_claude \
	-t ssh-claude-gcc16.2 \
	. \
	;

exit

#sh ../gcc16.2/build.sh \
# && \
# ;

docker build \

