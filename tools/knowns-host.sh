#!/bin/sh
for port in 2210 2211; do ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R "[127.0.0.1]:$port"; done
