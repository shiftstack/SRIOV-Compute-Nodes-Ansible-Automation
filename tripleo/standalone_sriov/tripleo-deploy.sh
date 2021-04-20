#!/bin/sh

# Generate a keypair for Octavia Amphora (needed by TripleO)
ssh-keygen -b 2048 -t rsa -f /home/stack/octavia -q -N ""

sudo openstack tripleo deploy \
    --templates \
    --local-ip=192.168.24.1 \
    --control-virtual-ip 10.8.1.135 \
    -e /usr/share/openstack-tripleo-heat-templates/environments/standalone/standalone-tripleo.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/services/octavia.yaml \
    -r /home/stack/Standalone.yaml \
    -e /home/stack/containers-prepare-parameters.yaml \
    -e /home/stack/standalone_parameters.yaml \
    --output-dir /home/stack \
    --keep-running \
    --standalone &>> /home/stack/tripleo-deploy.log
