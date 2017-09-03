# macos-backup-msrdc.sh (v0.1)
# To back up or migrate Microsoft Remote Desktop Client
# configuration in MacOS.
# DISCLAIMER: No guarantee this works, can change any time

BACKUP=/backup/location

# Backup, run in MacOS #1
sudo killall 'Microsoft Remote Desktop'
cp ~/Library/Containers/com.microsoft.rdc.mac/Data/Library/Preferences/com.microsoft.rdc.mac.plist $BACKUP
cp -R ~/Library/Containers/com.microsoft.rdc.mac/Data/Library/Application\ Support/Microsoft\ Remote\ Desktop $BACKUP

# Restore, run in MacOS #2
#sudo killall 'Microsoft Remote Desktop'
#cp -f $BACKUP/com.microsoft.rdc.mac.plist ~/Library/Containers/com.microsoft.rdc.mac/Data/Library/Preferences/com.microsoft.rdc.mac.plist
#cp -Rf $BACKUP/Microsoft\ Remote\ Desktop ~/Library/Containers/com.microsoft.rdc.mac/Data/Library/Application\ Support/Microsoft\ Remote\ Desktop
#sudo killall cfprefsd
