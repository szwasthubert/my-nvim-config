#!/usr/bin/sh

# ONLY WORKS WITH REDHAT-BASED DISTROS

# Place the init.vim file in a correct directory
mkdir -p $HOME/.config/nvim/
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cp $SCRIPTPATH/init.vim $HOME/.config/nvim/

# Additional dependencies
sudo yum install ripgrep #Needed by Telescope
mkdir -p $HOME/.local/share/fonts/
cp -r $SCRIPTPATH/JetBrains\ Mono\ NL\ Regular\ Nerd\ Font\ Complete\ Mono.ttf $HOME/.local/share/fonts/

