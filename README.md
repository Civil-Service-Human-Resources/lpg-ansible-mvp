# LPG Ansible Role

## Prerequisite

 * ansible : ` brew install ansible`
 * lpgKey.pem file for ansible to ssh into hosts : ` need lastpass or something similar to share secrets`  
 * ansible vault password : ` need lastpass or something similar to share secrets`

## Commands

add lpgKey.pem file to the root directory

```
ansible-playbook site.yml -i environments/dev --ask-vault-pass
```

