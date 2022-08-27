# Dotfiles

These dotfiles are some of the configurations of my MacBook.

## Included

Configurations for the following programs are included:

* [iTerm2](https://github.com/gnachman/iTerm2)
* [LinearMouse](https://github.com/linearmouse/linearmouse)
* [tmux](https://github.com/tmux/tmux)

## Provisioning

This repository can be set up using [Ansible](https://github.com/ansible/ansible) and [pavelzw/ansible-provision](https://github.com/pavelzw/ansible-provision).

The setup is as follows:
```shell
# install ansible to the system
python -m pip install ansible
# clone the repository
git clone https://github.com/pavelzw/ansible-provision.git
cd ansible-provision
# run the playbook
ansible-playbook playbook.yml --ask-become-pass
```
