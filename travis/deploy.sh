#!/usr/bin/env bash

set -e

# Use git commit hash as image tag
IMAGE=beanstalk-example/hello-world
ECR_TAG=$(git show -s --format=%h)

# Push latest available production image to ECR
. devops/ci/ecr-push.sh $IMAGE $ECR_TAG

. devops/ci/eb-deploy.sh \
    $IMAGE $ECR_TAG \
    ${EB_APP} ${EB_ENV} \
    docker # Folder with version files (Dockerrun.aws.json)
