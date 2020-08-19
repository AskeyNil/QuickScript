#!/bin/bash


###
 # hexo
 #
###

node_version="12.18.3"

add_zsh() {
    if [ -e ~/.zshrc ]; then
        if [ ! -n "`cat ~/.zshrc | grep "$1"`" ]; then
            echo $1 >> ~/.zshrc
            return 0
        else
            return 1
        fi
    fi
}

set_git_user() {
    git config user.name --global "AskeyNil"
    git config user.email --global "askeynil@gmail.com"
}

install_nvm() {
    [ ! $NVM_DIR ] && bash ./MacBootstrap/install_nvm.sh ${node_version}
}
