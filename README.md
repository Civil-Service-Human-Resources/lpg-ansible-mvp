# LPG Ansible Role for MVP

Prod: [lpg.cshr.digital](https://lpg.cshr.digital) Test: [lpg.test.cshr.digital](https://lpg.test.cshr.digital)



## Prerequisite

 * ansible : ` brew install ansible`
 * create private key mvp_test and mvp_prod in ~/.ssh/ : ` need lastpass or something similar to share secrets`  
 * create vault.yml, add the vault password : ` need lastpass or something similar to share secrets`

## Commands

To run ansible set inventory to test or prod

```
ansible-playbook site.yml -i environments/test
```

## Vault

To create, edit or view vault files use the following commands : 

```
ansible-vault create path/to/file  

ansible-vault view path/to/file  

ansible-vault edit path/to/file  
```

## ssh
To ssh directly into a host
```
ssh -i '~/.ssh/mvp_test' -o 'ProxyCommand ssh -i '~/.ssh/mvp_test' -W %h:%p lpg@test-lpg.uksouth.cloudapp.azure.com' -l lpg 10.0.10.4

```
Or copy ssh_test.conf into ~/.ssh/config
``````
ssh 10.0.10.4