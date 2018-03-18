#!/bin/bash

WDIR=/opt/wlan_slov_tunneldigger
VIRTUALENV_DIR=/opt/wlan_slov_tunneldigger

cd $WDIR
source $VIRTUALENV_DIR/env_tunneldigger/bin/activate

env_tunneldigger/bin/python -m tunneldigger_broker.main tunneldigger/broker/l2tp_broker.cfg

