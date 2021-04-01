#!/usr/bin/env bash

set -e


L4T_VERSION="r32.4.4"
ROS_DISTRO="foxy"
BASE_IMAGE="ros:$ROS_DISTRO-ros-base-l4t-$L4T_VERSION"

echo "building container for rcraicer..."
echo "base image..." $BASE_IMAGE 

TO_BUILD=($ROS_DISTRO)

sh ./scripts/docker_build.sh ros:rcraicer_base Dockerfile.rcraicer_base --build-arg BASE_IMAGE=$BASE_IMAGE
