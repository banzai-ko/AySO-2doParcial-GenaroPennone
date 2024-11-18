#! /bin/bash

# Controller Node
cd ../VMs/vagrant_web
export VAGRANT_EXPERIMENTAL="1"
vagrant plugin install vagrant-disksize
vagrant up

cd ../managed_node
vagrant up
