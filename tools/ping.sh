#!/bin/sh
ansible -i hosts.ini node -m ping -u vagrant --private-key=/home/$USER/.vagrant.d/insecure_private_key
