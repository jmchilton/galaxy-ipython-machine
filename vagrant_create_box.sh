#!/bin/bash

set -e

VAGRANT_NAME=${VAGRANT_NAME:-"galaxyipython"}
VAGRANT_NAME=${1:-${VAGRANT_NAME}}

VIRTUALBOX_BOX="packer_virtualbox-iso_virtualbox.box"

PACKER_CONF=${PACKER_CONF:-"packer.json"}

#export PACKER_LOG=1
if [ ! -n "$BOX_ONLY" ];
then
    rm -f $VIRTUALBOX_BOX || true
    packer build -only virtualbox-iso -var 'username=vagrant' $PACKER_CONF 
fi
vagrant box add -f $VAGRANT_NAME $VIRTUALBOX_BOX
