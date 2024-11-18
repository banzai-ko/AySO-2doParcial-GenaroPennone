#!/bin/bash

# Device to partition (replace /dev/sdX with your target device)
DEVICE="/dev/sdc"


# Table
parted -s "$DEVICE" mklabel msdos

# Primarias
parted -s "$DEVICE" mkpart primary 0% 10%
parted -s "$DEVICE" mkpart primary 10% 20%
parted -s "$DEVICE" mkpart primary 20% 30%

# Extendida
parted -s "$DEVICE" mkpart extended 30% 60%

# Logicas
parted -s "$DEVICE" mkpart logical 30% 40%
parted -s "$DEVICE" mkpart logical 40% 60%

# Display the partition table
echo "Particionado Completo: "
parted -s "$DEVICE" print

#Swap
echo "Crear Swap"

sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
swapon --show

# LVM

## Physical Volume
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6

## Volume Group
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6

## Logical volumes

sudo lvcreate -l 100%FREE --name lvAdmin vgAdmin

# sudo lvcreate -l 33%FREE -n lvDevelopers vgDevelopers
sudo lvcreate --size 1000MiB --name lvDevelopers vgDevelopers
#sudo lvcreate -l 33%FREE -n lvTesters vgDevelopers
sudo lvcreate --size 1000MiB --name lvTesters vgDevelopers
#sudo lvcreate -l 33%FREE -n lvDevops vgDevelopers
sudo lvcreate --size 1000MiB --name lvDevops vgDevelopers
