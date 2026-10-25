uNAME="$(id -nu)"
uID="$(id -u)"
gNAME="$(id -ng)"
gID="$(id -g)"
echo "Building with  user: ${uNAME}"
echo "Building with group: ${gNAME}"
docker build \
	--build-arg USER_NAME=${uNAME} \
	--build-arg GROUP_NAME=${gNAME} \
	--build-arg USER_ID=${uID} \
	--build-arg USER_ID=${gID} \
	--file ../../dockerfiles/Dockerfile_ssh \
	--build-arg COMPILER_VERSION="gcc:16.2" \
	-t ssh-gcc16.2 \
	. \
	;

