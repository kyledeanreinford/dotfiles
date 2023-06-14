echo "Loading personal preferences from dotfile"

# set key repeat speed
defaults write NSGlobalDomain KeyRepeat -int 4

# set menu clock
defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  h:mm a'
killall SystemUIServer

# set screenshots location to ~/Desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# show all filename extensions in Finder by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Add folders to sidebar
mysides add Desktop file:///Users/$accountname/Desktop
mysides add Documents file:///Users/$accountname/Documents
mysides add Downloads file:///Users/$accountname/Downloads

mkdir ~/Dev
