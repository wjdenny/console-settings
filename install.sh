#!/bin/bash

# update all git submodles
(cache-ssh-passphrase.sh && git submodule foreach git pull)

# add hook to ~/.bashrc
if ! grep --fixed-strings --quiet --file bashrc.hook ~/.bashrc; then
	cat <(echo "") bashrc.hook >> ~/.bashrc
fi

# link ~/.vimrc to this repository
if [ -f ~/.vimrc ]; then 
	mv --backup=numbered ~/.vimrc ~/.vimrc-original
fi

if [ -d ~/.vim && ! -L ~/.vim ]; then
	tar --create --gzip --file ~/.vim-original.tar.gz ~/.vim && rm -rf ~/.vim
fi

ln -s ~/.settings/vimrc ~/.vimrc && echo "vimrc linked successfully"
ln -s ~/.settings/vim ~/.vim && echo "vim directory linked successfully"

# link ~/.ledgerrc to this repository
ln -s ~/.settings/ledggerc ~/.ledgerrc && echo "ledgerrc linked successfully"
