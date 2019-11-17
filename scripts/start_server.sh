#!/bin/bash
git clone https://github.com/dineshshetty/Android-InsecureBankv2.git
cd Android-InsecureBankv2/AndroLabServer
virtualenv --python=/usr/bin/python2.7 server
source server/bin/activate
pip install flask
pip install flask-sqlalchemy
pip install simplejson
pip install cherrypy
python -m pip install web.py==0.37
# Run server on default port 8888.
python app.py
