# LPG Ansible Role for MVP

[lpg.test.cshr.digital](https://lpg.test.cshr.digital)

## Prerequisite

 * ansible : ` brew install ansible`
 * create private key mvp_test and mvp_prod in ~/.ssh/ : ` need lastpass or something similar to share secrets`  
 * create vault.yml, add the vault password : ` need lastpass or something similar to share secrets`
 * copy contents of ssh_test.conf and ssh_prod.conf to your ~/.ssh/config 

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