#!/bin/bash

echo "Starting Homebrew Installation"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Starting Core Apps Installation"
PACKAGES=(
coreutils
ffmpeg
go
grip
imagemagick
jq
kubernetes-cli
kubernetes-helm
mupdf-tools
xpdf
poppler
minikube
pandoc
r
reattach-to-user-namespace
shellcheck
tmux
tree
youtube-dl
)

echo "Installing Core Apps..."
brew install ${PACKAGES[@]}

echo "Installing ctags..."
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

echo "Starting Cask Apps Installation"
CASKS=(
adoptopenjdk11
android-studio
appcleaner
boom-3d
brave-browser  
caffeine
calibre
chromedriver
chromium
dbeaver-community
docker #Docker For Mac
drawio
firefox
flash-npapi
garmin-express
gnucash
google-chrome
google-cloud-sdk
google-featured-photos
google-hangouts
handbrake
ibm-cloud-cli
lens
licecap
macvim
meld
microsoft-teams
opera
postman
skype
slack
skypewebplugin
spotify
thinkorswim
tor-browser
vagrant
virtualbox
visual-studio-code
vlc
webex-meetings
xquartz
youtube-to-mp3
zoomus
)

echo "Installing Cask Apps..."
brew tap homebrew/cask
brew tap adoptopenjdk/openjdk
brew install --cask ${CASKS[@]}

echo "Installing Fonts..."
brew tap homebrew/cask-fonts
brew install font-ubuntu-mono-nerd-font

echo "Installing Drivers..."
brew install --cask homebrew/cask-drivers/logitech-unifying

echo "Apps Installation Complete"

echo "Installing tmux-plugins..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "Installing Oh My Zsh Plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '' 's/plugins=(git)/plugins=(git history-substring-search colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc


echo "Installing vim-plug.."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#TODO Add code to add vim plugins

echo "Installing virtualenvwrapper..."
python3 -m pip install --user virtualenvwrapper
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.zshrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.zshrc
echo "export PROJECT_HOME=$HOME/Repositories/github" >> ~/.zshrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.zshrc
