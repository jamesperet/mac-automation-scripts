clear
printf "\n\033[104mMac Configuration Script\033[49m\n"
printf "by James Peret - http://jamesperet.com\n\n"
sleep 1

# Config timezone
echo "- Timezone set to America/Sao_Paulo"
{
  systemsetup -settimezone America/Sao_Paulo
} >> log.txt 2>&1


# Don’t hide the Library folder
echo "- User ~/Library folder is now visible"
chflags nohidden ~/Library

# Disable Gate Keeper
echo "- Gate Keeper disabled"
spctl --master-disable

# Enable trackpad tap-to-click
echo "- Trackpad tap-to-click enabled"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad Clicking 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "- Dock configured"

# Pin dock to the bottom
defaults write com.apple.dock orientation -string bottom

# Enable dock auto-hide
defaults write com.apple.dock autohide -bool true

# Enable dock magnification
defaults write com.apple.dock magnification -boolean true

# Resize dock icons
defaults write com.apple.dock tilesize -integer 30
defaults write com.apple.dock largesize -integer 64

# Show finder path bar
echo "- Finder show path bar enabled"
defaults write com.apple.finder ShowPathbar -bool true

# Show finder status bar
echo "- Finder show status bar enabled"
defaults write com.apple.finder ShowStatusBar -bool true

# Disable the “Are you sure you want to open this application?” dialog
echo "- Quarantine dialog disabled"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set the screen resolution (be carefull)
#echo "- Screen resolution changed to 2048x1280"
#$HOME/dotfiles/screenresolution/screenresolution get
#$HOME/dotfiles/screenresolution/screenresolution list
#$HOME/dotfiles/screenresolution/screenresolution set 2048x1280x32@0

# Set Wallpaper
{
  mkdir $HOME/Pictures/Wallpapers
  curl -o $HOME/Pictures/Wallpapers/minimalistic-gray-2560x1440-wallpaper-905780.jpg https://s3-sa-east-1.amazonaws.com/jamesperet/files/wallpapers/minimalistic-gray-2560x1440-wallpaper-905780.jpg
  sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '$HOME/Pictures/Wallpapers/minimalistic-gray-2560x1440-wallpaper-905780.jpg'";
} >> log.txt 2>&1
echo "- Wallpaper set"

# Set the login screen wallpaper
{
  mv /Library/Caches/com.apple.desktop.admin.png $HOME/Desktop/
  cp $HOME/Pictures/Wallpapers/minimalistic-gray-2560x1440-wallpaper-905780.jpg /Library/Caches/com.apple.desktop.admin.jpg
} >> log.txt 2>&1
echo "- Login screen wallpaper set"

# Restart apps
echo "\nRestarting Apps..."
killall Dock
killall Finder
sleep 1
echo "\n\n\033[32mMAC OSX CONFIGURED SUCCESFULLY\n\n"
