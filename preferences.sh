echo "Loading personal preferences"

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

# List of apps to open
declare -a apps=( \
    1password \
    Rectangle \
    NordVPN \
    Notion \
    Slack \
    Pastebot \ 
    Dropbox
)

for package in "${apps[@]}"
do
  echo "Installing ${package}"
  open ${package}.app
done

# add permanent dock items
defaults write com.apple.dock persistent-apps -array

defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/IntelliJ IDEA.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'


declare -a dockItems=( \
  Slack.app \
  Signal.app \
  Warp.app \
  Notion.app \
  Pop.app
)
for item in "${dockItems[@]}"
do
  defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>'Applications/$item'</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
done; killall Dock

mkdir ~/Dev
