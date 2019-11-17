#!/bin/bash
apktool b --frame-path ../InsecureBankV2MobileFrameworks
zipalign -v 4 dist/InsecureBankv2.apk ../InsecureBankv2-Repackaged.apk
cd ..
apksigner sign --ks ~/.android/debug.keystore --ks-key-alias signkey InsecureBankv2-Repackaged.apk
adb uninstall com.android.insecurebankv2
adb install InsecureBankv2-Repackaged.apk
