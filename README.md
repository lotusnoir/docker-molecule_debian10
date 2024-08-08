
# Docker Image with Debian 10 base image 

This repo was created in order to test ansible roles with molecule. There is also ansible package in order to play role direcly on image. 

## Build it locally

  docker build -t test-build .
  docker run -t --cgroupns=host --volume=/sys/fs/cgroup:/sys/fs/cgroup:rw test-build

## Use it from dockerhub

    https://hub.docker.com/repository/docker/lotusnoir/ansible_molecule_test_images:debian10


## Run locally
    docker pull lotusnoir/ansible_molecule_test_images:debian10
    docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro lotusnoir/ansible_molecule_test_images:debian10
    docker ps -a
    docker exec -t DOCKER_ID /bin/bash
