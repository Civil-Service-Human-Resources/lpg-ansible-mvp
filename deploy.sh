#!/usr/bin/env bash

if [ -z $3 ]; then
    echo "Usage   : ./`basename $0` {appname} {environment} {tag}"
    echo "Example : ./`basename $0` lpgservices test latest"
    exit 2
fi

if [ !-f `which ansible` ]; then
    echo "ERROR: Ansible is not installed"
    exit 2
fi

app=$1
env=$2
tag=$3

if [ -z $VAULT_KEY ]; then
    # Handle local environment
    ln -sf /keybase/team/lpg/ops/ssh_keys/mvp_${env}.key mvp_${env}
    ln -s -f /keybase/team/lpg/ops/ansible/vault.yml vault.yml
else
    # Handle CI
    echo $mvp_${env} | base64 -d | cat > mvp_${env} && chmod 600 mvp_${env}
    echo $vaultpassword | base64 -d | cat > vault.yml
fi

echo "${app}: ${tag}" > group_vars/all/${app}.yml

if [ ${env} = dev ] || [ ${env} = test ] || [ ${env} = demo ]; then
    envFile="site.yml"
else
    envFile="cluster.yml"
fi

ansible-playbook ${envFile} -i environments/${env} -t ${app}
