#!/bin/bash
avdmanager create avd --name app_testing --abi google_apis/x86 --package 'system-images;android-18;google_apis;x86' --device "Nexus 6P" -c 1000M
