# SR-IOV Compute Nodes Ansible Automation

This project serves as a collaboration between the NFV and OpenShift on OpenStack team to create an *unofficial* but polished way to automate the creation of SR-IOV compute nodes in an OpenShift on OpenStack environment. This project contains ansible scripts that can be used in place of the current [UPI compute node ansible scripts](#shiftstack-upi-compute-nodes-ansible) to create compute nodes that have attached SR-IOV NICs, and the associated SR-IOV networking resources.

[shiftstack-upi-compute-nodes-ansible](https://github.com/openshift/installer/blob/master/upi/openstack/compute-nodes.yaml)