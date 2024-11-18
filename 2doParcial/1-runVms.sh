#! /bin/bash

# Key Generation
cd ../VMs/keys
ssh-keygen -t ed25519 -C "boxko398@gmail.com" -f ~/.ssh/key

# Controller Node
cd ../vagrant_web
vagrant plugin install vagrant-disksize
export VAGRANT_EXPERIMENTAL="1"
vagrant up

# MAnaged node
cd ../managed_node
vagrant up
