#!/bin/bash
yum -y install ansible
mv /etc/ansible/ansible.cfg  /etc/ansible/ansible.bak
mv /etc/ansible/hosts     /etc/ansible/host.bak
yum -y install git
git clone https://github.com/woshijiqinga/ansible.git /etc/anisble/roles/
cp -aP /etc/ansible/roles/geerlingguy.kubernetes/defaults/k8s.yaml  /etc/ansible/
cp -aP /etc/ansible/roles/geerlingguy.kubernetes/defaults/node.yaml  /etc/ansible/
cp -aP /etc/ansible/roles/geerlingguy.kubernetes/defaults/hosts    /etc/ansible/
yum -y install wget
cd /etc/ansible && wget https://raw.githubusercontent.com/woshijiqinga/test/master/ansible.cfg


