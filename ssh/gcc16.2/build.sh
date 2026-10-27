uNAME="$(id -nu)"
uID="$(id -u)"
gNAME="$(id -ng)"
echo "Building with  user: ${uNAME}"
echo "Building with group: ${gNAME}"
docker build \
	--build-arg USER_NAME=${uNAME} \
	--build-arg GROUP_NAME=${gNAME} \
	--build-arg USER_ID=${uID} \
	--file ../../dockerfiles/Dockerfile_ssh \
	--build-arg COMPILER_VERSION="gcc:16.2" \
	-t ssh-gcc16.2 \
	. \
	;

