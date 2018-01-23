#!/usr/bin/env bash


currentBranch=`git rev-parse --abbrev-ref HEAD`

if [ ${currentBranch} = "test" ]; then
        echo "Current branch is ${currentBranch}"
        envToDeployTo=test
    elif [ ${currentBranch} = "master" ]; then
        echo "Current branch is ${currentBranch}"
        envToDeployTo=prod
    else
        echo "Unknown environment"
        exit 2
fi





#ansible-playbook site.yml -i environments/${envToDeployTo} -t wso2

