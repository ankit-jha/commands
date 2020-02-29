#!/bin/bash

echo "Starting Homebrew Installation"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
adoptopenjdk8
amazon-music
appcleaner
boom-3d
brave-browser  
caffeine
calibre
docker #Docker For Mac
drawio
firefox
flash-npapi
garmin-express
google-chrome
google-featured-photos
google-hangouts
handbrake
licecap
macvim
meld
opera
postman
skype
slack
skypewebplugin
spotify
tor-browser
vagrant
virtualbox
vlc
webex-meetings
whatsapp
xquartz
youtube-to-mp3
)

echo "Installing Cask Apps..."
brew tap homebrew/cask
brew cask install ${CASKS[@]}

echo "Installing Fonts..."
brew tap homebrew/cask-fonts
brew cask install font-UbuntuMono-nerd-font

echo "Apps Installation Complete"

echo "Installing tmux-plugins..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sed -i '' 's/plugins=(git)/plugins=(git history-substring-search colored-man-pages zsh-autosuggestions zsh-completions zsh-syntax-highlighting)/' ~/.zshrc

echo "Installing vim-plug.."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing virtualenvwrapper..."
python3 -m pip install --user virtualenvwrapper
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.zshrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.zshrc
echo "export PROJECT_HOME=$HOME/Repositories/github" >> ~/.zshrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.zshrc
