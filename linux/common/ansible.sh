#!/bin/sh

# Store build time
date > /etc/packer_build_time

# Set up sudo
echo 'ansible ALL=NOPASSWD:ALL' > /etc/sudoers.d/ansible

# Install key
mkdir -pm 700 /home/ansible/.ssh
wget --no-check-certificate https://raw.githubusercontent.com/shawnshipley/packer-templates/master/http/2004/id_rsa.pub -O /home/ansible/.ssh/authorized_keys
chmod 0600 /home/ansible/.ssh/authorized_keys
chown -R ansible:ansible /home/ansible/.ssh
