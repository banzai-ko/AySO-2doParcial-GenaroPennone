#! /bin/bash

# Controller Node
cd ../VMs/vagrant_web
vagrant plugin install vagrant-disksize
export VAGRANT_EXPERIMENTAL="1"
vagrant up

# MAnaged node
cd ../managed_node
vagrant up
