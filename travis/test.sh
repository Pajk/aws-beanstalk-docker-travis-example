#!/usr/bin/env bash

set -e

# Build test and production image
docker build -t beanstalk-example/hello-world:test -f docker/Dockerfile.test .
docker build -t beanstalk-example/hello-world:latest -f docker/Dockerfile.prod .

# Run tests
. devops/ci/docker-compose.sh docker/compose.test.yml
