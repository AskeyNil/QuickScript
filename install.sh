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
    git config --global user.name  "AskeyNil"
    git config --global user.email "askeynil@gmail.com"
}

install_nvm() {
    [ ! $NVM_DIR ] && bash ./MacBootstrap/install_nvm.sh ${node_version}
}

install_hexo() {
    [[ `which hexo` ]] || npm install hexo-cli -g
    cd Blog
    npm install --registry=https://registry.npm.taobao.org
    cd ../
}

set_git_user
install_nvm
install_hexo
rm -rf /usr/local/bin/qs
ln -s ~/Documents/.QuickScript/qs.sh /usr/local/bin/qs

on_success "安装成功"
