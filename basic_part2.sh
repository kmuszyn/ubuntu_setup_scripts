#!/bin/bash

set -e

# zsh custom theme
wget https://raw.githubusercontent.com/kmuszyn/utils/master/bira-mod.zsh-theme
mv bira-mod.zsh-theme ~/.oh-my-zsh/themes/
sed -i -e 's/robbyrussell/bira-mod/g' ~/.zshrc

# git config

git config --global user.name "Kamil Muszynski"
git config --global user.email muszynski.kamil@gmail.com
