# How to use dotfiles #

## vim ##

### get vimfiles ###

    user$ cd $HOME
    user$ git clone git@github.com:hydrangeas/dotfiles.git

### link to vimfiles ###

    user$ cd $HOME
    user$ ln -s ./dotfiles/.vim .
    user$ ln -s ./dotfiles/.vimrc .

### vundle install ###
open any file, and execute `:bundleinstall`

