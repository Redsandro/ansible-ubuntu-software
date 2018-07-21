#!/usr/bin/env bash
#
# For updating tlp settings, run:
# sudo ./ansible.sh --tags tlp
#
# For remote provisioning, set up:
# /etc/ansible/hosts
# Skip tasks not relevant. E.g. for gpd pocket:
# env ANSIBLE_NOCOWS=1 sudo ansible-playbook --skip-tags="lightdm,docker,virtualbox" remote-gpd.yml

SU=""
if [ "$(whoami)" != "root" ]; then
	SU="--ask-become-pass"
fi

env ANSIBLE_NOCOWS=1 ansible-playbook local.yml $SU $1 $2 $3 $4 $5 $6
