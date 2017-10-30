#!/bin/bash

set -e

# atom repo
sudo add-apt-repository ppa:webupd8team/atom

# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# spotify
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886
sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list.d/spotify.list'

# installation
sudo apt-get update
sudo apt-get install -y atom git git-cola mc vim vlc google-chrome-stable zsh curl spotify-client


# oh my zsh config
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
wget https://raw.githubusercontent.com/kmuszyn/utils/master/bira-mod.zsh-theme
mv bira-mod.zsh-theme ~/.oh-my-zsh/themes/
sed -i -e 's/robbyrussell/bira-mod/g' ~/.zshrc

# git config

git config --global user.name "Kamil Muszynski"
git config --global user.email muszynski.kamil@gmail.com
