#!/bin/bash

# ==============================================
# macos-system-defaults.sh
#
# Commands target the current boot drive
#
# Hannes Juutilainen <hjuutilainen@mac.com>
# ==============================================

# ==============================================
# Date & Time
# ==============================================

/usr/sbin/systemsetup -settimezone "Australia/Brisbane"
/usr/sbin/systemsetup -setnetworktimeserver "time.asia.apple.com"
/usr/sbin/systemsetup -setusingnetworktime on
/usr/sbin/sysadminctl -automaticTime on


# ==============================================
# Application layer firewall
# ==============================================

# Enable ALF
defaults write /Library/Preferences/com.apple.alf globalstate -int 1

# Allow signed apps
defaults write /Library/Preferences/com.apple.alf allowsignedenabled -bool true

# Enable logging
defaults write /Library/Preferences/com.apple.alf loggingenabled -bool true

# Disable stealth mode
defaults write /Library/Preferences/com.apple.alf stealthenabled -bool false


# ==============================================
# Login window
# ==============================================

# Display login window as: Name and password
defaults write /Library/Preferences/com.apple.loginwindow SHOWFULLNAME -bool true

# Show shut down etc. buttons
defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool false

# Don't show any password hints
defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int 0

# Allow fast user switching
defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool true

# Show input menu
defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Disable screensaver on login window
defaults write /Library/Preferences/com.apple.screensaver loginWindowIdleTime -int 0


# ==============================================
# Software update
# ==============================================

# Enable automatic update check and download
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# Enable app update installs
defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true

# Enable system data files and security update installs
defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool true
defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool true

# Enable OS X update installs
defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool true


# Set scroll direction
defaults write /Library/Preferences/.GlobalPreferences com.apple.swipescrolldirection -bool false


# ==============================================
# Time Machine
# ==============================================

# Don't offer new disks for backup
defaults write /Library/Preferences/com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true


# ==============================================
# Guest access off
# ==============================================
/usr/sbin/sysadminctl -guestAccount off
/usr/sbin/sysadminctl -afpGuestAccess off
/usr/sbin/sysadminctl -smbGuestAccess off


echo "Done. Note that these changes require a restart to take effect."
