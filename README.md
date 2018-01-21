# LPG Ansible Role for MVP

[lpg.test.cshr.digital](https://lpg.test.cshr.digital)

## Prerequisite

 * ansible : ` brew install ansible`
 * create private key ~/.ssh/mvp_test : ` need lastpass or something similar to share secrets`  
 * ansible vault password : ` need lastpass or something similar to share secrets`
 * copy contents of ssh_test.conf to your ~/.ssh/config ``

## Commands

```
ansible-playbook site.yml -i environments/test --ask-vault-pass
```


