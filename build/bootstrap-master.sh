#!/bin/bash
# Provisioning script for master machine managed by Vagrant.

# Include function definitions.
source /vagrant/build/functions.sh

# Choose which function to run to setup Ambari version.
## setupPivotalAmbari only works on zdata extensions 0.4 release branch
setupPivotalAmbari /vagrant/artifacts/AMBARI-1.7.1-87-centos6.tar
#setupVanillaAmbari /vagrant/artifacts/ambari.repo
