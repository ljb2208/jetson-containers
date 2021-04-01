#!/usr/bin/env bash

set -e


L4T_VERSION="r32.4.4"
ROS_DISTRO="foxy"
BASE_IMAGE="ros:rcraicer-base"

echo "building container for rcraicer..."
echo "base image..." $BASE_IMAGE 

TO_BUILD=($ROS_DISTRO)

sh ./scripts/docker_build.sh ros:rcraicer-latest Dockerfile.rcraicer.latest --build-arg BASE_IMAGE=$BASE_IMAGE
