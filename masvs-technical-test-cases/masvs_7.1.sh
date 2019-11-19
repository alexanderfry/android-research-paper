#!/bin/bash
# MASVS 7.1
# Identify the RSA file
unzip -l InsecureBankV2.apk | grep META-INF
# Uncompress the RSA file
unzip -qq InsecureBankV2.apk META-INF/CERT.RSA
# Check the certificate information
openssl pkcs7 -inform DER -in META-INF/CERT.RSA -noout -print_certs
# Verify the APK signature
apksigner verify --verbose InsecureBankv2.apk
# Examine the contents of the signing certificate
jarsigner -verify -verbose -certs InsecureBankv2.apk
