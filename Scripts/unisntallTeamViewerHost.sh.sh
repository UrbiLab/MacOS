#!/bin/bash
if pgrep TeamViewer &> /dev/null; then
    echo "Stopping TeamViewer..."
     pkill TeamViewer
fi
echo "Uninstalling TeamViewer..."
sudo rm -rf /Applications/TeamViewerHost.app
sudo rm -rf /Library/Preferences/com.teamviewer.teamviewer.preferences.plist
sudo rm -rf /Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist
sudo rm -rf /Library/LaunchAgents/com.teamviewer.teamviewer.plist
sudo rm -rf /Library/LaunchDaemons/com.teamviewer.Helper.plist
sudo rm -rf /Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist
echo "TeamViewer has been uninstalled."