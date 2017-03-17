# ansible

Run Ansible within docker

... from your CLI

Example

```
# ~/git/ansible              - Where your shared ansible repository is stored
# ~/.ssh                     - SSH keys and config files
# ~/.bash_profile            - Load your aliases and functions
# ~/.aws                     - AWS Access Keys
# ~/ANSIBLE_VAULT_PASSWD.txt - Ansible Vault Password
docker run \
	-v ~/git/ansible:/etc/ansible \
	-v ~/.ssh:/root/.ssh \
	-v ~/.bash_profile:/root/.bashrc \
	-v ~/.aws:/root/.aws \
	-v ~/ANSIBLE_VAULT_PASSWD.txt:/root/ANSIBLE_VAULT_PASSWD.txt \
	-it ansible bash
```
