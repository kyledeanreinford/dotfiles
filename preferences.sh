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
mysides add Desktop
mysides add Documents
mysides add Downloads

mkdir ~/Dev
