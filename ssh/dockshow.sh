#!/usr/bin/bash

echo ""
echo "=== Docker Images"
docker image ls -a

echo ""
echo "=== Docker Containers"
docker container ls -a

echo ""
echo "=== Docker processes"
docker ps

