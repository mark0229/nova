#!/bin/sh
su - auth -c"ansible-playbook /etc/ansible/playbook/nova/temp-check/auth-temp.yml"
sleep 5
su - data -c"ansible-playbook /etc/ansible/playbook/nova/temp-check/data-temp.yml"
sleep 5
su - ims -c"ansible-playbook /etc/ansible/playbook/nova/temp-check/ims-temp.yml"
sleep 5
su - edge -c"ansible-playbook /etc/ansible/playbook/nova/temp-check/edge-temp.yml"
sleep 5
su - data -c"ansible-playbook /etc/ansible/playbook/nova/temp-check/test-tmp.yml"
sleep 10
vi /etc/ansible/result/nova/nova-temp.csv
