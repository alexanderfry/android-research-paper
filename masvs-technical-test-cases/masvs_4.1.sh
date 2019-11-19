#!/bin/bash
# MASVS 4.1
adb logcat | egrep -i ‘login‘
# Then run the following command from the Drozer Console
#run app.activity.start --component com.android.insecurebankv2 com.android.insecurebankv2.PostLogin
