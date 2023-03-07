#!/bin/bash

START=$(date +%s)

apt update

apt install software-properties-common -y
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y

ansible-playbook playbook.yml -i inventory

END=$(date +%s)
DIFF=$(( $END - $START ))
printf "It took $DIFF seconds\n"