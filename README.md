# LPG Ansible Role for MVP

## Prerequisite

 * ansible : ` brew install ansible`
 * private key ~/.ssh/mvp_test : ` need lastpass or something similar to share secrets`  
 * ansible vault password : ` need lastpass or something similar to share secrets`

## Commands

```
ansible-playbook site.yml -i environments/test --ask-vault-pass
```

