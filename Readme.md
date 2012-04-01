# How to use dotfiles #

## vim ##

Following commands are not need root permissions.

### get vimfiles ###

    cd $HOME
    git clone git://github.com/hydrangeas/dotfiles.git

### link to vimfiles ###

    cd $HOME
    ln -s ./dotfiles/.vim .
    ln -s ./dotfiles/.vimrc .

### vundle install ###

    cd $HOME/dotfiles
    git submodule init
    git submodule update

open any file, for example `.vimrc`, and execute `:BundleInstall`

