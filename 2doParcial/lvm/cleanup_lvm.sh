#!/bin/bash

sudo lvremove -f /dev/vgAdmin/* 2>/dev/null || true
sudo lvremove -f /dev/vgDevelopers/* 2>/dev/null || true

sudo vgremove -f vgAdmin 2>/dev/null || true
sudo vgremove -f vgDevelopers 2>/dev/null || true

sudo pvremove -f /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6 2>/dev/null || true
