#!/bin/bash

NC='\033[0m' # No Color
WHITE='\033[0;36m'

main () {
	echo -en "Do you wish to install the following apps${WHITE} Brave, Fanny, FreeTube, Macs Fan Control, Stremio, Sublime Text, VLC and Webtorrent?${NC}\n(y/n): "
	read basics
	echo -en "Do you wish to install all remaining apps?\n(y/n): "
	read all

	installBrew
	installPython

	# install youtube download
	brew install youtube-dl

	# install apps
	if [ "$basics" == "y" ]; then
		installBasics
	fi

	if [ "$all" == "y" ]; then
		installAll
	fi

	git config --global user.name "veryheavypickle"
	git config --global user.email xavier.carroll01@gmail.com
}

installBrew () {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	# Restart terminal
	zsh
}

installPython() {
	# install python
	brew install pyenv
	pyenv install 3.10.6
	pyenv global 3.10.6
}

installBasics() {
	brew install --cask brave-browser
	brew install --cask fanny
	brew install --cask freetube
	brew install --cask macs-fan-control
	brew install --cask stremio
	brew install --cask sublime-text
	brew install --cask vlc
	brew install --cask webtorrent
}

installAll() {
	brew install --cask arduino
	brew install --cask blender
	brew install --cask clion
	brew install --cask discord
	brew install --cask keepassxc
	brew install --cask mysqlworkbench
	brew install --cask openvpn-connect
	brew install --cask processing
	brew install --cask pycharm-ce
	brew install --cask slack
	brew install --cask telegram
	brew install --cask termius
	brew install --cask virtualbox
	brew install --cask virtualbox-extension-pack
}

main