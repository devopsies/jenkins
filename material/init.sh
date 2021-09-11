#!/bin/bash

apt update
apt install openjdk-11-jdk -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
apt update
apt install jenkins -y

systemctl start jenkins

systemctl status jenkins

echo "############### ADMIN PASSWORD FOR FIRST LOGIN:"
cat /var/lib/jenkins/secrets/initialAdminPassword


echo "############### VM NETWORK INTERFACES:"
ip addr
