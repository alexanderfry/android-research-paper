#!/bin/bash
# First start the emulator with a writable operating system and with selinux disabled
adb root && adb remount
cd /tmp
git clone https://github.com/0xFireball/root_avd
cd root_avd/
# This script assumes you only have one AVD attached because it doesn't specify the AVD device id
adb install SuperSU/common/Superuser.apk
adb push SuperSU/x86/su /system/xbin/su
adb shell chmod 0755 /system/xbin/su
adb shell setenforce 0
adb shell su --install
adb shell su --daemon&
