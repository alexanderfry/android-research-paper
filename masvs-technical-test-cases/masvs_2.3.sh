#!/bin/bash
# MASVS 2.3
adb logcat | egrep -i ‘http|https|cookie|login|md5|sha1|auth|pass|ssn|ein’
# Then run the following command from the Drozer Console
#run app.activity.start --component com.android.insecurebankv2 com.android.insecurebankv2.DoLogin --extra string passed_username "jack" --extra string passed_password "Jack@123$"
