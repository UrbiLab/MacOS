#!/bin/bash

osascript -e 'tell application "Cisco AnyConnect Secure Mobility Client" to quit'

sudo /opt/cisco/anyconnect/bin/vpn_uninstall.sh
sudo /opt/Cisco/anyconnect/bin/dart_uninstall.sh
sudo -s
rm -rf /System/Library/StartupItems/CiscoVPN
rm -rf /Library/StartupItems/CiscoVPN
rm -rf /System/Library/Extensions/CiscoVPN.kext
rm -rf /Library/Extensions/CiscoVPN.kext
rm -rf /Library/Receipts/vpnclient-kext.pkg
rm -rf /Library/Receipts/vpnclient-startup.pkg
rm -rf /opt/cisco
rm -rf .cisco
exit 0