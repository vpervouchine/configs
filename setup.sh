#!/usr/bin/env bash

configs_dir=$HOME/src/configs

function install_file {
    dir=$1
    fname=$2
    full_fname=$1/$2
    if [ -f $full_fname ]; then
        if [ -L $full_fname ]; then
            echo "removing symlink $full_fname"
            rm $full_fname
        else
            echo "backing up $full_fname"
            mv $full_fname $full_fname.backup
        fi
    fi
    ln -s $configs_dir/$fname $full_fname
}

install_file $HOME .bashrc
install_file $HOME .profile
install_file $HOME .gitconfig
install_file $HOME .gdbinit
install_file $HOME .tmux.conf
