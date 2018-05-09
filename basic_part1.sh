#!/bin/bash

set -e

# atom repo
sudo add-apt-repository -y ppa:webupd8team/atom

# keepassxc
sudo add-apt-repository -y ppa:phoerious/keepassxc

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# installation
sudo apt-get update
sudo apt-get install -y atom git git-cola mc vim vlc zsh curl spotify-client keepassxc


# oh my zsh config - this will stop shell script, resume with basic_part2.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
