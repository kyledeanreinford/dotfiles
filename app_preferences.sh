echo "Running Personalized Script"

# List of apps to install
declare -a apps=( \
    1password-cli \
)

for package in "${apps[@]}"
do
  echo "Installing ${package}"
  brew install ${package}
done

# List of trusted cask apps to install
declare -a caskApps=( \
    spotify \
    signal \
    dropbox \
    notion \
    nordvpn \
    adobe-creative-cloud \
    warp
)

for package in "${caskApps[@]}"
do
  echo "Installing ${package}"
  brew install --cask --no-quarantine ${package}
done


# List of apps to remove
declare -a toRemove=( \
    sublime-text \
    
)

for package in "${toRemove[@]}"
do
  echo "Removing ${package}"
  brew uninstall ${package}
  brew autoremove
done
