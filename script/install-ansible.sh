#!/bin/bash -eux
# Install ansible, required for the ansible-local packer provisioner

if [ -f /etc/centos-release ]; then
	yum install epel-release policycoreutils-python-utils systemd -y
    yum -y install ansible systemd
else

	apt-get update
	apt-get install apt-transport-https software-properties-common -y
	apt-add-repository ppa:ansible/ansible -y
    apt-get install ansible python-apt -y
fi

