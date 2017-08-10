#!/usr/bin/env bash

set -e

# Clone repo with helpers
ls devops > /dev/null 2>&1 \
    || git clone --single-branch --depth 1 https://github.com/Pajk/aws-beanstalk-docker-travis.git devops

# Install AWS CLI
. devops/ci/awscli.sh

# Install node modules
npm install
