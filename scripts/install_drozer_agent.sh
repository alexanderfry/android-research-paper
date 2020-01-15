#!/bin/bash
wget https://github.com/mwrlabs/drozer/releases/download/2.3.4/drozer-agent-2.3.4.apk
adb install drozer-agent-2.3.4.apk
# On device, browse to the Drozer app and start the embedded server on port 31415
# Then run: adb forward tcp:31415 tcp:31415
