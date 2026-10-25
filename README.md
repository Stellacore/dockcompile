# dockcompile - Docker containers and bash scripts for building software


## Intro/Overview

Ref RunRemoteDocker.txt for explanation of connecting to docker container
(provisioned for compilation) via an ssh connection from a remote "UserNode"
through an intermediate "HostNode" on which a "DockNode" container is running.

There are directories associated with main purpose (e.g. ./ssh) and specific
compiler versions within this (e.g. ./ssh/gcc16.2)
In general, key file and script names are (or similar to):

* build.sh -- build the docker image from local Dockerfile in same directory

* execute.sh -- run a specific command within a container

* start.sh -- start a *detached* container

* connect.sh -- start an *interactive* container

These files use a master dockerfile template that is stored in the
(./dockerfiles) directory

* DockerfileXYZ -- configuration for specific "XYZ" environment

