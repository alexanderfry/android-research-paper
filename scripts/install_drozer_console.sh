#!/bin/bash
virtualenv --python=/usr/bin/python2.7 dzr
source dzr/bin/activate
pip install pyopenssl
pip install protobuf
pip install twisted
pip install service_identity
wget https://github.com/mwrlabs/drozer/releases/download/2.4.4/drozer-2.4.4-py2-none-any.whl
pip install drozer-2.4.4-py2-none-any.whl
