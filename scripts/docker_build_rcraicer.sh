#!/usr/bin/env bash

set -e

L4T_VERSION="r32.6.1"
ROS_DISTRO="foxy"
BASE_IMAGE="ros:$ROS_DISTRO-ros-base-l4t-$L4T_VERSION"

echo "building container for rcraicer..."
echo "base image..." $BASE_IMAGE 

TO_BUILD=($ROS_DISTRO)

sh ./scripts/docker_build_nocache.sh ros:rcraicer Dockerfile.rcraicer --build-arg BASE_IMAGE=$BASE_IMAGE
