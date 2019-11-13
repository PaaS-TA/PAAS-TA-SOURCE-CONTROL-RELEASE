#!/bin/bash

bosh -e micro-bosh -d paasta-sourcecontrol-service deploy paasta_sourcecontrol_bosh2.0.yml \
   -o use-public-network-[YOUR-IAAS].yml \
   -v default_network_name=default \
   -v public_network_name=vip \
   -v stemcell_os=ubuntu-xenial \
   -v stemcell_version=315.64 \
   -v vm_type_small=minimal
